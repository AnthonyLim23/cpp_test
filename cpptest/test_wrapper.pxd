from libcpp cimport bool

cdef extern from '_test.h':
    int moo(bool &a)

    cdef cppclass stuff:
        stuff(int, int) except +
        int x0, x1
        int multi()
        int diff()
