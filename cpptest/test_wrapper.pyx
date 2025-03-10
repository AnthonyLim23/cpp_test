from test_wrapper cimport moo, stuff

cdef class Stuff:
    cdef stuff *c_stuff

    def __init__(self, int X0, int X1):
        self.c_stuff = new stuff(X0, X1)

    def __dealloc__(self):
        del self.c_stuff

    def multi(self):
        return self.c_stuff.multi()

    def diff(self):
        return self.c_stuff.diff()

    def sum(self, a):
        return self.c_stuff.sum(a)

def boo(a):
    return moo(a)
