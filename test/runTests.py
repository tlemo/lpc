
# Copyright 2018 LPC Authors
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     https://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# LPC test runner

import glob
import os
import re
import sys
import argparse
from subprocess import *

#------------------------------------------------------------------------------
# helper functions
#------------------------------------------------------------------------------

def printDot():
    print('.', end = '')
    sys.stdout.flush()

def run(command, cwd = None):
    return Popen(command, stdout = PIPE, universal_newlines = True, cwd = cwd).communicate()[0]
    
def extraArgs(test):
    f = open(test)
    m = re.match(r'{args:([^}]+)}', f.readline())
    f.close()
    if m:
        args = re.findall(r'[^, ]+', m.group(1))
        args = [re.sub('@', outDir, a) for a in args]
        args = [os.path.join(root, a) for a in args]
        return ' %s ' % (' '.join(args))
    else:
        return ''

def isDifferent(file):
    if args.vcs == 'svn':
        return run(f'svn status {file}')
    elif args.vcs == 'git':
        return run(f'git diff -- {file}')
    else:
        print(f'Unsupported VCS: {args.vcs}')
        exit(1)

#------------------------------------------------------------------------------
# target definitions
#------------------------------------------------------------------------------

def cppBuildCmd(p2Source, exeName):
    cmd = 'cl'
    options = ' -nologo -Od -J -EHsc -Zi '
    options += ' -I%s ' % os.path.join(root, '..', 'cppRuntime')
    options += ' -Fo%s\\ ' % tmpPath
    options += ' -Fd%s\\ ' % tmpPath
    options += ' -Fe%s\\ ' % tmpPath
    linkOptions = ' /link /incremental:no '
    return cmd + options + p2Source + linkOptions
    
def clrBuildCmd(p2Source, exeName):
    cmd = 'ilasm'
    options = ' -nologo -quiet -debug -32bitpreferred -optimize '
    options += ' -output=%s ' % exeName
    options += ' -include=%s ' % os.path.join(root, '..', 'clrRuntime')
    return cmd + options + p2Source
    
def clrVerifyCmd(exeName):
    cmd = 'peverify'
    options = r' -nologo -il -ignore=@.peverify.ignore '
    return cmd + options + exeName
    
def llvmBuildCmd(p2Source, exeName):
    return f'llc -O3 --frame-pointer=all -filetype=obj {p2Source}'
    
targetDef = {
    'cpp' :
    {
        'outDir' : 'out.cpp',
        'p2ext' : '.cpp',
        'p2cmd' : cppBuildCmd,
    },
    
    'clr' :
    {
        'outDir' : 'out.clr',
        'p2ext' : '.il',
        'p2cmd' : clrBuildCmd,
        'verifyCmd' : clrVerifyCmd,
    },
    
    'llvm' :
    {
        'outDir' : 'out.llvm',
        'p2ext' : '.ll',
        'p2cmd' : llvmBuildCmd,
        # TODO: verify cmd
    },
}

#------------------------------------------------------------------------------
# Test runner
#------------------------------------------------------------------------------

def runTest(test):
    testName = os.path.basename(test)
    baseName = os.path.splitext(testName)[0]
    consoleOut = os.path.join(outPath, baseName + '.con')
    exeOut = os.path.join(outPath, baseName + '.out')
    exeInput = os.path.join(root, baseName + '.input')
    status = 'ok'
    
    print('%-26s: ' % testName, end = '')
    sys.stdout.flush()
    
    # compile pass 1 (LPC)
    #
    printDot()
    lpcOutPath = ' -outPath=' + outPath + ' '
    lpcOptions = ' -nologo -warnings -target=%s ' % targetName
    lpcOptions += lpcOutPath
    cmd = lpcCmd + lpcOptions + test + ' >> ' + consoleOut

    with open(consoleOut, 'w') as file:
        file.write('\ncompiling pass 1 (LPC)\n')
        file.write('-----------------------------------------------------\n')
    
    errcode = os.system(cmd)
    
    with open(consoleOut, 'a') as file:
        file.write('P1 errcode = %d\n' % errcode)
    
    if errcode == 0:
        # compile pass 2 (target specific)
        #
        printDot()
        p2Source = os.path.join(outPath, baseName + target['p2ext'])
        exeName = os.path.join(root, 'tmp', baseName + '.exe')

        if os.path.exists(p2Source):
            cmd = target['p2cmd'](p2Source, exeName) + ' >> ' + consoleOut
                
            with open(consoleOut, 'a') as file:
                file.write('\ncompiling pass 2 (target = %s)\n' % targetName)
                file.write('-----------------------------------------------------\n')
            
            errcode = os.system(cmd)
            
            with open(consoleOut, 'a') as file:
                file.write('\nP2 errcode = %d\n' % errcode)
                
            if errcode != 0:
                status = 'FAILED_P2'
            else:
                # optionally validate the executable
                #
                if 'verifyCmd' in target:
                    printDot()
                    
                    with open(consoleOut, 'a') as file:
                        file.write('\nverifying the resulting binary\n')
                        file.write('-----------------------------------------------------\n')
                        
                        exePath, exeBaseName = os.path.split(exeName)
                        result = run(target['verifyCmd'](exeBaseName), cwd = exePath)
                        result = re.sub(re.escape(exeName), exeBaseName, result)
                        file.write(result)
                
                # run the executable
                #
                printDot()
                
                cmd = exeName
                if os.path.exists(exeInput):
                    cmd += ' -input=' + exeInput
                cmd += ' -output=' + exeOut
                cmd += extraArgs(test)
                
                errCode = os.system(cmd)
                
                if errCode != 0: status = 'FAILED_RUN'

    # finally, compare the output against the checked in (golden) version
    #
    for outputFile in glob.glob(os.path.join(outPath, baseName + '.*')):
        if isDifferent(outputFile):
            status += ', DIFF'
            break
    
    print(' ' + status)

#------------------------------------------------------------------------------
# command line parsing
#------------------------------------------------------------------------------

arg_parser = argparse.ArgumentParser(
    description = 'LPC test runner', allow_abbrev = False)

arg_parser.add_argument('build',
    help = 'Build flavor (debug/release)')
arg_parser.add_argument('target',
    help = 'Code generation target (cpp/clr)')
arg_parser.add_argument('test_case', nargs = '?',
    help = 'Validate just the specified test case')
arg_parser.add_argument('--vcs', default = 'git', nargs = '?',
    choices = ['git', 'svn'],
    help = 'Select the version control system')
arg_parser.add_argument('--clean',
    help = 'Wipe the output directory clean before running the tests', action='store_true')

args = arg_parser.parse_args()

buildFlavor = args.build
targetName = args.target
testName = args.test_case

if testName is not None and not os.path.exists(testName):
    print(f'Invalid test case ({testName})')
    exit(1)

if targetName not in targetDef:
    print(f'Invalid target name ({targetName})')
    exit(1)

target = targetDef[targetName]

#------------------------------------------------------------------------------
# execute the selected tests
#------------------------------------------------------------------------------

root = sys.path[0]
outDir = target['outDir']
tmpPath = os.path.join(root, 'tmp')
outPath = os.path.join(root, outDir)

lpcCmd = os.path.join(root, '..', buildFlavor, 'lpc.exe')
if not os.path.exists(lpcCmd):
    print(f"\nCan't find the LPC binary for the specified build flavor ({buildFlavor})")
    exit(1)

# wipe the output location clean if requested
#
if args.clean:
    cleanupPattern = os.path.join(outPath, '*.*')
    print(f'\nCleaning up [{cleanupPattern}]\n')
    os.system(f'del /Q {cleanupPattern}')

print(f'Running LPC test suite: build={buildFlavor}, target={targetName}')
print('-----------------------------------------------')

# process each test case (or just the one specified)
#
if testName is not None:
    runTest(testName)
else:
    for test in glob.glob(os.path.join(root, '*.pas')):
        runTest(test)
