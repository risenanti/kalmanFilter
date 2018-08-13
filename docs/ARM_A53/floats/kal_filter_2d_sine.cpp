#include <iostream>
#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"
#include "KalmanFilter2D.hpp"

#include <stdint.h>
using namespace std;

int main() {
	mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m[3] = {1, 2, 3};
	
	KF2D myFilter(p, a, q, m[0], m[1], m[2]);
	
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
