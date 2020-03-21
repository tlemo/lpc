@echo off

echo Cleaning up temporary files...
git clean -dxfq -e lpcRuntime.* tmp

python runTests.py %*
