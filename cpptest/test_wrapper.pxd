from libcpp cimport bool
from libcpp.vector cimport vector

cdef extern from '_test.h':
    int moo(bool &a)

    cdef cppclass stuff:
        stuff(int, int) except +
        int x0, x1
        int multi()
        int diff()
        int sum(vector[int] a)
