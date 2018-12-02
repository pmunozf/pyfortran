#!/bin/bash
#
# Pablo Munoz (c) 2018
#
# Generate signature files for fortran wrapper
f2py fib.f90 -m fib -h fib.pyf --overwrite-signature
cat fib.pyf
