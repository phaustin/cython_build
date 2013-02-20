import cb
from distutils.core import setup
import numpy as np

global_includes = [np.get_include()]
global_macros = [("__FORCE_CPP__",)]

extensions = [
  {'name' : 'fortran_cpp',
    'sources' : [
      'fortran_cpp.pyx',
      'cpplus.cpp',
      'fortran_test.f90',
  ]}
]

import sys, os.path
if 'build' in sys.argv or ('install' in sys.argv and not os.path.exists('build')):
  cb.build(extensions, global_macros = global_macros, global_includes = global_includes)

import datetime
setup(
  name="fortran_cpp",
  version=datetime.date.today().strftime("%d%b%Y"),
  author="test",
  author_email="test",
  url="TBA"
)
