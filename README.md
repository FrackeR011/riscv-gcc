This directory contains the GNU Compiler Collection (GCC).

The GNU Compiler Collection is free software.  See the files whose
names start with COPYING for copying permission.  The manuals, and
some of the runtime libraries, are under different terms; see the
individual source files for details.

The directory INSTALL contains copies of the installation information
as HTML and plain text.  The source of this information is
gcc/doc/install.texi.  The installation information includes details
of what is included in the GCC sources and what files GCC installs.

See the file gcc/doc/gcc.texi (together with other files that it
includes) for usage and porting information.  An online readable
version of the manual is in the files gcc/doc/gcc.info*.

See http://gcc.gnu.org/bugs/ for how to report bugs usefully.

Copyright years on GCC source files may be listed using range
notation, e.g., 1987-2012, indicating that every year in the range,
inclusive, is a copyrightable year that could otherwise be listed
individually.

##Note
This is a fork of riscv-gcc modified for handling floating point exceptions. 
Changes were made in riscv.md. Following rtl expressions now generate breakpoints when **any** floating point exception occurs:
- fmul
- fadd
- fdiv
- fsub

riscv.md is used to generate assembly instructions from RTL. It contains machine description consisting of rules for instruction selection and register allocation, pipeline description, and peephole optimizations. 

This is a work in progress.
