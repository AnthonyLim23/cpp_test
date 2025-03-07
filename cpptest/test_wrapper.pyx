from libcpp cimport bool

cdef extern from '_test.h':
    int moo(bool &a)

    cdef cppclass stuff:
        stuff(int, int) except +
        int x0, x1
        int multi()

cdef class Stuff:
    cdef stuff *c_stuff

    def __init__(self, int X0, int X1):
        self.c_stuff = new stuff(X0, X1)

    def __dealloc__(self):
        del self.c_stuff

    def multi(self):
        return self.c_stuff.multi()

def boo(a):
    return moo(a)
