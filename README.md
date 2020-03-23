
# LPC - An experimental "Standard Pascal" (ISO 7185) Compiler #

LPC is a simple Pascal compiler, primarly intended as a sandbox to 
experiment with compiler construction ideas. It grew from a toy compiler for a small
subset of Pascal (originally generating 80206 assembly, although the code for that backend
is now lost)

Currently it supports the core ISO 7185 features and it generate C++ code or MSIL (CIL)
assembly targeting .NET CLR. 

It was never meant to be a production compiler, and the design decissions reflect that.
It's not an "optimizing compiler" either. Instead, the main goals are:

* A simple and clean architecture
* Explicit grammar specification (Lex/Yacc style lexer and parser)
* Intuitive data structures (AST, symbol table and type system)
* Clear separation between the front end and the backend (using an AST visitor interface)
* Small language support runtime
* Reasonably clean code generation (human readable and preserving the structure of the
  original Pascal code as much as possible)

## Prerequisites ##

* Visual C++ 2017 or later (the Community edition should suffice)
* [Flex++/Bison++](http://www.kohsuke.org/flex++bison++). Must be added to the PATH.
* Python 3 (needed to run the tests)

## Building and running LPC ##

> **Important**: Flex++ may require a small manual patch. If the build complains about
> a missing `osfcn.h` header, comment out or remove the corresponding `#include <osfcn.h>`
> from the `flexskel.cc` file (located next to the flex++.exe binary)

1. Load `lpc.sln` in Visual Studio, then build (ex. Build/Build Solution)
2. `lpc.exe` is the executable (by default located in the Debug or Release subdirectory)
3. The `lpc.exe` has a very simple command line interface: `lpc [options...] <inputFile>`
4. Run `lpc -?` for the list of options

## Running the tests ##

The tests are under the `test` directory (Python3 is required to run the tests)

1. Setup the Visual C++ command line environment

    - Option 1: From the IDE, use "Tools / Visual Studio Command Prompt"
    - Option 2: Run vcvarsall.bat from a command line window

2.  Execute runTests.py from the `test` directory

    The build flavor (debug/release) and the code generation target must be selected
    (currently cpp or clr). For example:

    `python runtest.py debug clr`

## TODO ##

- Optimize out slinks
- Generate LLVM debug info metadata for the activation record

## Resources ##

* [standardpascal.org](http://www.standardpascal.org)
* [Pascal-P5 compiler](https://sourceforge.net/projects/pascalp5)
* [Compiling for the .NET Common Language Runtime (CLR)](https://www.amazon.com/Compiling-NET-Common-Language-Runtime/dp/0130622966)
* [.NET IL Assembler](https://www.amazon.com/NET-Assembler-Serge-Lidin/dp/1430267615)
* [CIL Programming: Under the Hood of .NET](https://www.amazon.com/CIL-Programming-Under-Hood-NET/dp/1590590414)

A special thank you to Scott A. Moore, the creator of 
[standardpascal.org](http://www.standardpascal.org) for maintaining one of the best
collection of materials about ISO 7185 (Standard Pascal).

 > This is not an officially supported Google product
