# hello-world-asm
A simple introduction to assembly language with a "Hello, world!" program written for x86_64 Linux in Flat Assembler assembly language.

## Requirements
- The following software (accessible on the `PATH` [environment variable](https://en.wikipedia.org/wiki/Environment_variable)):
    - [Flat Assembler](https://flatassembler.net/download.php) (v1.73.30 is recommended).
    - Any Bourne-compatbile shell (`sh`).
- A machine running the [Linux kernel](https://www.linux.org/pages/download/) with an implementation supporting the [x86_64 instruction set](https://en.wikipedia.org/wiki/X86-64).

## Usage
The shell script, `tool`, contains the commands necessary for building. Run `./tool help` or just `./tool` for instructions.
```sh
$ ./tool run

building...
flat assembler  version 1.73.30  (16384 kilobytes memory)
3 passes, 232 bytes.

executing...
Hello, world!
$ 
```

By default, the executable is written to `out/helloworld`. I encourage you to check out the `tool` shell script and modify it to your liking.