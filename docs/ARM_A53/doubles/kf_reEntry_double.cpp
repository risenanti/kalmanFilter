#include <stdio.h>
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "mat5.hpp"

#include "KalmanFilterReEntry.hpp"

using namespace std;

int main()
{
	mat5 q(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);
	mat5 p(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);

	mat2 s(1,2,3,4);
	mat2 r(1,1,2,5);
	double m[5] = {1.1, 2.2, 3.3, 4.6, 1.7};
	double para[7] = {1,2,3,4,5,6,7};

	KFRENTER myFilter(p,q,s,r,m,para);

	myFilter.Y[0] = (float)2.0;
	myFilter.Y[1] = (float)4.0;

	myFilter.task1();
	myFilter.task2();
	myFilter.task3();
	myFilter.task4();
	myFilter.task5();
	myFilter.task6();
	myFilter.task7();
	myFilter.task8();

	return 0;
}
