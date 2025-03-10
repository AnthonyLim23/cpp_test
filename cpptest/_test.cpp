#include "_test.h"

int moo(bool a){
        if (a){return 1;}
        else{return 0;}}

stuff::stuff(int X0, int X1){
	x0 = X0;
	x1 = X1;
}

stuff::~stuff(){}

int stuff::multi(){
	return x0*x1;
}


int stuff::diff(){
	return x1-x0;
}


int stuff::sum(std::vector<int> &a){
	int tot = 0;
	for(int k=0; k<a.size(); k++){
		tot += a[k];
	}
	return tot;
}
