# -*- coding: utf-8 -*-
"""
Created on Mon Nov 20 19:04:17 2017

@author: cbridge
"""

from libc.stdlib cimport malloc, free 
from libc.stdio cimport fopen, fclose, FILE, fscanf, fread

# %^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%
#
# %^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%^%
def readin_binary(filename, int number_of_points):
    """
    Test reading in a file and returning data
    """
    cdef unsigned char* header_bytes = <unsigned char*>malloc(number_of_points)
    cdef FILE *in_binary_file

    filename_byte_string = filename.encode("UTF-8")    
    in_binary_file = fopen(filename_byte_string, 'rb')
    
    if in_binary_file is NULL:
        print("file not found")
    else:                       
        print("Read file {}".format(filename))
        fread(&header_bytes, 1, number_of_points, in_binary_file)
    
    fclose(in_binary_file)
    return header_bytes    
