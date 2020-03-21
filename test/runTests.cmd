@echo off

echo Cleaning up temporary files...
git clean -dxfq tmp

echo Running tests...
python runTests.py %*
