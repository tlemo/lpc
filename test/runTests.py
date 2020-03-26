
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
import subprocess

from typing import Dict, List, Union, Optional, Any, Set, Tuple


# ------------------------------------------------------------------------------
# helper functions
# ------------------------------------------------------------------------------

def print_dot():
    print('.', end='')
    sys.stdout.flush()


def shell_cmd(command, cwd=None):
    return subprocess.run(
        args=command,
        cwd=cwd,
        shell=True,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT)


def extra_args(test):
    f = open(test)
    m = re.match(r'{args:([^}]+)}', f.readline())
    f.close()
    if m:
        args = re.findall(r'[^, ]+', m.group(1))
        args = [re.sub('@', out_dir, a) for a in args]
        args = [os.path.join(root, a) for a in args]
        return f' {" ".join(args)} '
    else:
        return ''


def is_different(file):
    if args.vcs == 'svn':
        return bool(shell_cmd(f'svn status {file}').stdout)
    elif args.vcs == 'git':
        return shell_cmd(f'git diff --exit-code -- {file}').returncode != 0
    else:
        print(f'Unsupported VCS: {args.vcs}')
        sys.exit(1)


# ------------------------------------------------------------------------------
# target definitions
# ------------------------------------------------------------------------------

def cpp_build(base_name, exe_name, log):
    global out_path
    global tmp_path

    p2_source = os.path.join(out_path, base_name + '.cpp')
    
    options = ' -nologo -Od -J -EHsc -Zi '
    options += f' -I{os.path.join(root, "..", "cppRuntime")} '
    options += f' -Fo{tmp_path}\\ '
    options += f' -Fd{tmp_path}\\ '
    options += f' -Fe{tmp_path}\\ '
    link_options = ' /link /incremental:no '
    cmd = f'cl {options} {p2_source} {link_options}'
    result = shell_cmd(cmd, cwd=tmp_path)
    log.write(result.stdout)
    log.write(f'Exit code: {result.returncode}\n')
    return result.returncode == 0


def clr_build(base_name, exe_name, log):
    global out_path
    global tmp_path

    p2_source = os.path.join(out_path, base_name + '.il')

    # ilasm (.il -> .exe)
    log.write('\nInvoking ILASM ...\n')
    options = ' -nologo -quiet -debug -32bitpreferred -optimize '
    options += f' -output="{exe_name}" '
    options += f' -include="{os.path.join(root, "..", "clrRuntime")}" '
    cmd = f'ilasm {options} {p2_source}'
    result = shell_cmd(cmd, cwd=tmp_path)
    log.write(result.stdout)
    log.write(f'Exit code: {result.returncode}\n')
    if result.returncode != 0:
        return False

    # peverify
    print_dot()
    log.write('\nVerifying the compiled binary (PEVERIFY) ...\n')
    options = r' -nologo -il -ignore=@.peverify.ignore '
    verify_cmd = f'peverify {options} {exe_name}'
    verify_result = shell_cmd(verify_cmd, cwd=tmp_path)
    log.write(re.sub(re.escape(exe_name), base_name + '.exe', verify_result.stdout))
    log.write(f'Exit code: {verify_result.returncode}\n')
    
    return True


def llvm_build(base_name, exe_name, log):
    global out_path
    global tmp_path

    p2_source = os.path.join(out_path, base_name + '.ll')
    obj = os.path.join(tmp_path, base_name + '.obj')

    # LLC (.ll -> .obj)
    log.write('\nInvoking LLC ...\n')
    llc_options = '-O3 --frame-pointer=all -filetype=obj --mtriple=x86_64-pc-windows-msvc19'
    llc_cmd = f'llc {llc_options} {p2_source} -o {obj}'
    llc_result = shell_cmd(llc_cmd, cwd=tmp_path)
    log.write(llc_result.stdout)
    log.write(f'Exit code: {llc_result.returncode}\n')
    if llc_result.returncode != 0:
        return False

    # link (.obj -> .exe)
    print_dot()
    log.write('\nLinking...\n')
    runtime_lib = os.path.join(root, '..', 'x64', build_flavor, 'llvmRuntime.lib')
    link_options = '/nologo /debug /include:main'
    link_cmd = f'link {link_options} {obj} {runtime_lib} /out:{exe_name}'
    link_result = shell_cmd(link_cmd, cwd=tmp_path)
    log.write(link_result.stdout)
    log.write(f'Exit code: {link_result.returncode}\n')
    return link_result.returncode == 0


target_step = {
    'cpp': cpp_build,
    'clr': clr_build,
    'llvm': llvm_build,
}


# ------------------------------------------------------------------------------
# LPC wrapper
# ------------------------------------------------------------------------------

def lpc_step(source_file, cwd, log) -> bool:
    options = f'-nologo -debuginfo -warnings -target={target_name} -outpath={cwd}'
    cmd = f'{lpc_cmd} {options} {source_file}'
    result = shell_cmd(cmd, cwd=cwd)
    log.write(result.stdout)
    log.write(f'Exit code: {result.returncode}\n')
    return result.returncode == 0


# ------------------------------------------------------------------------------
# Test runner
# ------------------------------------------------------------------------------

def run_test(test):
    global out_path
    global tmp_path
    global target_name

    test_name = os.path.basename(test)
    base_name = os.path.splitext(test_name)[0]
    console_out = os.path.join(out_path, base_name + '.con')
    exe_out = os.path.join(out_path, base_name + '.out')
    exe_input = os.path.join(root, base_name + '.input')
    exe_name = os.path.join(tmp_path, base_name + '.exe')
    status = 'ok'

    print('%-26s: ' % test_name, end='')
    sys.stdout.flush()

    with open(console_out, 'w') as log:
        # pass 1 (LPC)
        print_dot()
        log.write('\ncompiling pass 1 (LPC)\n')
        log.write('-----------------------------------------------------\n')

        if lpc_step(test, out_path, log):
            # pass 2 (target specific)
            print_dot()
            log.write(f'\ncompiling pass 2 (target = {target_name})\n')
            log.write('-----------------------------------------------------\n')

            if not target_step[target_name](base_name, exe_name, log):
                status = 'FAILED_P2'
            else:
                # run the compiled executable
                print_dot()
                log.write('\nrunning the executable\n')
                log.write('-----------------------------------------------------\n')

                cmd = exe_name
                if os.path.exists(exe_input):
                    cmd += ' -input=' + exe_input
                cmd += ' -output=' + exe_out
                cmd += extra_args(test)
                result = shell_cmd(cmd, cwd=tmp_path)
                log.write(result.stdout)
                log.write(f'\nExit code: {result.returncode}')

                if result.returncode != 0:
                    status = 'FAILED_RUN'

    # finally, compare the output against the checked in (golden) version
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

if target_name not in target_step:
    print(f'Invalid target name ({target_name}), must be one of: {[t for t in target_step]}')
    sys.exit(1)


# ------------------------------------------------------------------------------
# execute the selected tests
# ------------------------------------------------------------------------------

root = sys.path[0]
out_dir = f'out.{target_name}'
tmp_path = os.path.join(root, 'tmp')
out_path = os.path.join(root, out_dir)

lpc_cmd = os.path.join(root, '..', build_flavor, 'lpc.exe')
if not os.path.exists(lpc_cmd):
    print(
        f"\nCan't find the LPC binary for the specified build flavor ({build_flavor})")
    sys.exit(1)

# wipe the output location clean if requested
if args.clean:
    cleanup_pattern = os.path.join(out_path, '*.*')
    print(f'\nCleaning up [{cleanup_pattern}]\n')
    os.system(f'del /Q {cleanup_pattern}')

print(f'Running LPC test suite: build={build_flavor}, target={target_name}')
print('-----------------------------------------------')

# process each test case (or just the one specified)
if test_name is not None:
    run_test(test_name)
else:
    for test in glob.glob(os.path.join(root, '*.pas')):
        run_test(test)
