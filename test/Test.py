#!/usr/bin/python
# -*- coding: utf-8 -*-
"""
Created on 2018 11 20

@author: Chris Bridge
"""

import cython_binary

filename = "test_file.bin"
print(cython_binary.readin_binary(filename, 10))
