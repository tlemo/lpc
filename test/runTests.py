
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

import glob
import os
import re
import sys
import argparse
from subprocess import Popen, PIPE


# ------------------------------------------------------------------------------
# helper functions
# ------------------------------------------------------------------------------

def print_dot():
    print('.', end='')
    sys.stdout.flush()


def shell_cmd(command, cwd=None):
    return Popen(command, stdout=PIPE, universal_newlines=True, cwd=cwd).communicate()[0]


def extra_args(test):
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


def is_different(file):
    if args.vcs == 'svn':
        return shell_cmd(f'svn status {file}')
    elif args.vcs == 'git':
        return shell_cmd(f'git diff -- {file}')
    else:
        print(f'Unsupported VCS: {args.vcs}')
        sys.exit(1)


# ------------------------------------------------------------------------------
# target definitions
# ------------------------------------------------------------------------------

def cpp_build_cmd(p2_source, exe_name):
    cmd = 'cl'
    options = ' -nologo -Od -J -EHsc -Zi '
    options += ' -I%s ' % os.path.join(root, '..', 'cppRuntime')
    options += ' -Fo%s\\ ' % tmp_path
    options += ' -Fd%s\\ ' % tmp_path
    options += ' -Fe%s\\ ' % tmp_path
    link_options = ' /link /incremental:no '
    return cmd + options + p2_source + link_options


def clr_build_cmd(p2_source, exe_name):
    cmd = 'ilasm'
    options = ' -nologo -quiet -debug -32bitpreferred -optimize '
    options += ' -output=%s ' % exe_name
    options += ' -include=%s ' % os.path.join(root, '..', 'clrRuntime')
    return cmd + options + p2_source


def clr_verify_cmd(exe_name):
    cmd = 'peverify'
    options = r' -nologo -il -ignore=@.peverify.ignore '
    return cmd + options + exe_name


def llvm_build_cmd(p2_source, exe_name):
    base, _ = os.path.splitext(exe_name)
    obj_fileName = base + '.obj'
    options = '-O3 --frame-pointer=all -filetype=obj --mtriple=x86_64-pc-windows-msvc19'
    return f'llc {options} {p2_source} -o {obj_fileName}'


target_def = {
    'cpp':
    {
        'outDir': 'out.cpp',
        'p2ext': '.cpp',
        'p2cmd': cpp_build_cmd,
    },

    'clr':
    {
        'outDir': 'out.clr',
        'p2ext': '.il',
        'p2cmd': clr_build_cmd,
        'verifyCmd': clr_verify_cmd,
    },

    'llvm':
    {
        'outDir': 'out.llvm',
        'p2ext': '.ll',
        'p2cmd': llvm_build_cmd,
        # TODO: verify cmd
    },
}


# ------------------------------------------------------------------------------
# Test runner
# ------------------------------------------------------------------------------

def run_test(test):
    test_name = os.path.basename(test)
    base_name = os.path.splitext(test_name)[0]
    console_out = os.path.join(out_path, base_name + '.con')
    exe_out = os.path.join(out_path, base_name + '.out')
    exe_input = os.path.join(root, base_name + '.input')
    status = 'ok'

    print('%-26s: ' % test_name, end='')
    sys.stdout.flush()

    # compile pass 1 (LPC)
    #
    print_dot()
    lpc_out_path = ' -outpath=' + out_path + ' '
    lpc_options = ' -nologo -warnings -target=%s ' % target_name
    lpc_options += lpc_out_path
    cmd = lpc_cmd + lpc_options + test + ' >> ' + console_out

    with open(console_out, 'w') as file:
        file.write('\ncompiling pass 1 (LPC)\n')
        file.write('-----------------------------------------------------\n')

    errcode = os.system(cmd)

    with open(console_out, 'a') as file:
        file.write('P1 errcode = %d\n' % errcode)

    if errcode == 0:
        # compile pass 2 (target specific)
        #
        print_dot()
        p2_source = os.path.join(out_path, base_name + target['p2ext'])
        exe_name = os.path.join(root, 'tmp', base_name + '.exe')

        if os.path.exists(p2_source):
            cmd = target['p2cmd'](p2_source, exe_name) + ' >> ' + console_out

            with open(console_out, 'a') as file:
                file.write('\ncompiling pass 2 (target = %s)\n' % target_name)
                file.write(
                    '-----------------------------------------------------\n')

            errcode = os.system(cmd)

            with open(console_out, 'a') as file:
                file.write('\nP2 errcode = %d\n' % errcode)

            if errcode != 0:
                status = 'FAILED_P2'
            elif not os.path.exists(exe_name):
                status = 'NO_BINARY'
            else:
                # optionally validate the executable
                #
                if 'verifyCmd' in target:
                    print_dot()

                    with open(console_out, 'a') as file:
                        file.write('\nverifying the resulting binary\n')
                        file.write(
                            '-----------------------------------------------------\n')

                        exe_path, exe_base_name = os.path.split(exe_name)
                        result = shell_cmd(target['verifyCmd'](
                            exe_base_name), cwd=exe_path)
                        result = re.sub(re.escape(exe_name),
                                        exe_base_name, result)
                        file.write(result)

                # shell_cmd the executable
                #
                print_dot()

                cmd = exe_name
                if os.path.exists(exe_input):
                    cmd += ' -input=' + exe_input
                cmd += ' -output=' + exe_out
                cmd += extra_args(test)

                errCode = os.system(cmd)

                if errCode != 0:
                    status = 'FAILED_RUN'

    # finally, compare the output against the checked in (golden) version
    #
    for output_file in glob.glob(os.path.join(out_path, base_name + '.*')):
        if is_different(output_file):
            status += ', DIFF'
            break

    print(' ' + status)


# ------------------------------------------------------------------------------
# command line parsing
# ------------------------------------------------------------------------------

arg_parser = argparse.ArgumentParser(
    description='LPC test runner', allow_abbrev=False)

arg_parser.add_argument('build',
                        help='Build flavor (debug/release)')
arg_parser.add_argument('target',
                        help='Code generation target (cpp/clr)')
arg_parser.add_argument('test_case', nargs='?',
                        help='Validate just the specified test case')
arg_parser.add_argument('--vcs', default='git', nargs='?',
                        choices=['git', 'svn'],
                        help='Select the version control system')
arg_parser.add_argument('--clean',
    help = 'Wipe the output directory clean before running the tests', action='store_true')

args = arg_parser.parse_args()

build_flavor = args.build
target_name = args.target
test_name = args.test_case

if test_name is not None and not os.path.exists(test_name):
    print(f'Invalid test case ({test_name})')
    sys.exit(1)

if target_name not in target_def:
    print(f'Invalid target name ({target_name})')
    sys.exit(1)

target = target_def[target_name]


# ------------------------------------------------------------------------------
# execute the selected tests
# ------------------------------------------------------------------------------

root = sys.path[0]
outDir = target['outDir']
tmp_path = os.path.join(root, 'tmp')
out_path = os.path.join(root, outDir)

lpc_cmd = os.path.join(root, '..', build_flavor, 'lpc.exe')
if not os.path.exists(lpc_cmd):
    print(
        f"\nCan't find the LPC binary for the specified build flavor ({build_flavor})")
    sys.exit(1)

# wipe the output location clean if requested
#
if args.clean:
    cleanup_pattern = os.path.join(out_path, '*.*')
    print(f'\nCleaning up [{cleanup_pattern}]\n')
    os.system(f'del /Q {cleanup_pattern}')

print(f'Running LPC test suite: build={build_flavor}, target={target_name}')
print('-----------------------------------------------')

# process each test case (or just the one specified)
#
if test_name is not None:
    run_test(test_name)
else:
    for test in glob.glob(os.path.join(root, '*.pas')):
        run_test(test)
