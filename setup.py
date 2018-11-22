#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
@author: Chris Bridge
"""

from setuptools import setup
from distutils.core import setup
from Cython.Build import cythonize

from setuptools.extension import Extension
cython_packages = [
					Extension(name="cython_binary.cython_binary", sources=["cython_binary\\cython_binary.pyx"])
                  ]

setup(name='cytohon_binary',
      version='1.0',
      description='Test binary file read in Cython',
      url='TBC',
      author='Christopher Bridge',
      author_email='chris@bridgeboys.co.uk',
      license='-',
      packages=['cython_binary'],
      setup_requires=['cython'],
      ext_modules=cythonize(cython_packages),
      zip_safe=False)
