#ifndef RECTANGLE_H
#define RECTANGLE_H
#include <vector>
#include "hdf5.h"


int moo(bool a);

class stuff {
	public:
		int x0, x1;
		stuff(int X0, int X1);
		~stuff();
		int multi();
		int diff();
		int sum(std::vector<int> &a);
};

#endif
