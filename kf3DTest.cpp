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
#include "KalmanFilter2D.hpp"

using namespace std;

int main()
{
	mat4 test1(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16);
	mat4 test2=test1;
	//test1 = test1+test2;
	test1=test1.transpose();

	test1.print();

	return 0;
}
