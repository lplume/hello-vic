# chibiakumas-20

> Stripped down dev tools of ChibiAkumas [6502 assembly tutorial](https://www.chibiakumas.com/6502/)

This template include all the common files, assembler and a few script to start kicking around vic-20 6502's assembly

## Requirements

* [Vice](https://vice-emu.sourceforge.io/) - the Versatile Commodore Emulator

## Script

```bash
$ cd tool
$ ./build program-name
```

Will build a program "program-name.prg" in the builds directory.

```bash
$ cd tool
$ ./bload program-name
```

Will build a program "program-name.prg" in the builds directory and autostart with `xvic`
