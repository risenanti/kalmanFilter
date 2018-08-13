#include <stdio.h>
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "KalmanFilter3D.hpp"

using namespace std;
int main()
{
	float m[4];
	mat2 r(1,2,3,4);
	mat2 s=r;
	mat4 q(1,2,3,4,5,6,7,8,9,10, 11,12,13,14,15,16);
	mat4 a(17,18,19,1,2,3,4,5,6,7,8,9,0,11,15,16);
	mat4 p=a-q;
	KF3D myFilter(p, a, q, s,r, m);
	
	myFilter.setMeasurement(0.01,1.02);
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
