Wrapping fortran in python

Instructions
- Run make in [pyfortran/lib/fib$ make] to compile the fortran source using f2py
- Optionally ran [pyfortran/lib/fib$ ./makeSignature.sh] to see the generated
  signature file.
- Source the environment file [pyfortran$ source ./env] to add the generated python
  module to system PYTHONPATH
- Run [pyfortran$ bin/test.py] to see the generated docstring
  and use the fortran subroutine
