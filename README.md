npscipy-binaries
================

Compiled packages for NumPy and SciPy. Currently the following versions are
supported:

NumPy:
  * 1.9.1
  * 1.9.2
  * 1.10.1 (Python 2.7.10)

SciPy:
  * 0.14.0 (compiled against NumPy 1.9.1)
  * 0.16.0 (compiled against NumPy 1.9.2)
  * 0.16.1 (compiled against Python 2.7.10, NumPy 1.10.1)

These packages were compiled on a virtual machine that matched Heroku's
`cedar`
runtime environment. The virtual machine ran Ubuntu 14.04 LTS (Trusty Tahr)
with gcc toolchain version 4.8.2.

If not otherwise marked, the Python interpreter used to compile these packages was Python 2.7.9 with
UCS2.

This project also includes `npscipy.tar.gz`, which contains compiled runtime
libraries for BLAS, LAPACK, ATLAS, and Fortran, which are needed by NumPy and
SciPy at runtime.

For older binaries and binaries compiled against the original `cedar` stack,
please take a look at
https://github.com/thenovices/npscipy-binaries
