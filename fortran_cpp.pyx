#cython: embedsignature=True
import numpy as np
cimport numpy as np
from libc.stdint cimport int8_t

cdef extern from "cpplus.hpp":
   cdef void readbytes(signed char* byteone,signed char* maskout,int nvals)

cdef extern from"fortran.hpp":
   cdef void fortran_fun(int *N,double *outvals)
   
def getmask(object bytemask):
    bytemask=np.ascontiguousarray(bytemask)
    cdef int nvals= bytemask.size
    maskout=np.empty_like(bytemask)
    cdef int8_t* dataPtr=<int8_t*> np.PyArray_DATA(bytemask)
    cdef int8_t* maskPtr=<int8_t*> np.PyArray_DATA(maskout)
    readbytes(dataPtr, maskPtr,nvals)
    return maskout

def test_fortran(the_length):
    cdef int N=the_length
    outarray=np.empty([the_length],dtype=np.double)
    cdef double *outptr=<double*> np.PyArray_DATA(outarray)
    fortran_fun(&N,outptr)
    return outarray

