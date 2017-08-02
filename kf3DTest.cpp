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
#include "mat5.hpp"
#include "KalmanFilter3D.hpp"
#include "KalmanFilterReEntry.hpp"

using namespace std;

int main()
{
	mat5 q(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);
	mat5 p(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);

	mat2 s(1,2,3,4);
	mat2 r(1,1,2,5);
	float m[5] = {1.1, 2.2, 3.3, 4.6, 1.7};
	float para[7] = {1,2,3,4,5,6,7};

	KFRENTER kk(p,q,s,r,m,para);
	kk.task0();
	kk.task1();
	kk.task2();
	kk.task3();
	kk.task4();
	kk.task5();
	kk.task6();

	return 0;
}
