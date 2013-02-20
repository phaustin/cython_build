cython_build
============

combined build of cython + c++  + fortran, using 
https://github.com/joe-jordan/complicated_build

* Note that the gfortran and g++ compilers are hardwired
  in cb.py.

* Currently OSX/Linux only

To build and test::

  python setup_complex.py build

  then:

  python testit.py
  bitmask pixel dump:-- number of bytes: 8-- first byte: 00000000
  [0 0 1 1 2 2 3 3]
  [ 1.  2.  3.  4.  5.  6.]


  



