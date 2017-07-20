#include <stdio.h>
#include <iostream>

#include <math.h>
#include <iomanip>
#include <cstdlib>

#define desktop
//#define debug
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "KalmanFilter3D.hpp"

using namespace std;

int main()
{
	mat4 test1(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16);
	mat4 test2=test1;
	mat4 test3 = test2+test1;//= (1.1,2.2,2.3,3.2,	3.3,4.4,5.5,2.1, 	4.4,3.2,1.6,2.2,	2.1,3.1,4.4,5.1);
	mat2 test5(1,2,3,4);
	mat2 test6(5,6,7,8);
	float m[4] = {1,2,3,4};

	KF3D myFilter(test1,test2,test3,test5,test6, m);
	myFilter.task1();
	myFilter.task2();
	myFilter.task3();

	myFilter.task4();
	myFilter.task5();
	myFilter.task6();

	myFilter.setMeasurement(1.01, 0.042);
	myFilter.task7();
	myFilter.task8();

	return 0;
}
