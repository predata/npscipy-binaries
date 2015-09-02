npscipy-binaries
================

Compiled packages for NumPy and SciPy. Currently the following versions are
supported:

NumPy:
  * 1.6.2
  * 1.7.2
  * 1.8.1
  * 1.8.2
  * 1.9.0
  * 1.9.1
  * 1.9.2

SciPy:
  * 0.13.3 (compiled against NumPy 1.9.0)
  * 0.14.0 (compiled against NumPy 1.8.1)
  * 0.15.1 (compiled against NumPy 1.9.2)

These packages were compiled on a virtual machine that matched Heroku's
runtime environment. The virtual machine ran Ubuntu 10.04 LTS (Lucid Lynx)
with gcc toolchain version 4.4.3 (Ubuntu 4.4.3-4ubuntu5.1).

The Python interpreter used to compile these packages was Python 2.7.6 with
UCS2.

This project also includes `npscipy.tar.gz`, which contains compiled runtime
libraries for BLAS, LAPACK, ATLAS, and Fortran, which are needed by NumPy and
SciPy at runtime.

For older binaries, please take a look at
https://github.com/dbrgn/npscipy-binaries
