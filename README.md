# C64 Tests
I wanted to try writing some assembly programs in the Commodore 64

These were tested using the Vice emulator http://vice-emu.sourceforge.net/

To build install the tpmx assembler https://style64.org/file/TMPx_v1.1.0-STYLE.zip

More info: http://turbo.style64.org/

## Building

To build the programs:

- Install tmpx (in unix like systems ensure the binary file from above is in your path)
- Run `make` or `make <task>`

## Running

Load the .d64 file. (In Vice use File -> Smart Attach Disk Image) and then run the program by using the `sys` commands.

These programs start at address $1000 or 4096 so run:
`sys 4096`

## Hello World

This folder just contains serveral different (but similar) ways to print "HELLO, WORLD!" to the screen.

I mainly used this to figure out differnet concepts like labels and sub-routines.
