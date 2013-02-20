import site
site.addsitedir('build/lib/')
import fortran_cpp as fort
import numpy as np

the_bytes=np.arange(0,8,dtype=np.int8)

print fort.getmask(the_bytes)

print fort.test_fortran(6)



