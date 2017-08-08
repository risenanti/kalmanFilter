#include <stdio.h>
#include <iostream>

#include <math.h>
#include <iomanip>
#include <cstdlib>

#define desktop
//#define debug
#include "mat2.hpp"
#include "mat3.hpp"
#include "KalmanFilter2D.hpp"

#include "xtime_l.h"
#include "xparameters.h"

using namespace std;
int main(){

XTime tEnd[8], tCur[8];
	unsigned long ticksTask1 = 0, ticksTask2 = 0, ticksTask3 = 0, ticksTask4 = 0,ticksTask5 = 0,
	ticksTask6 = 0, ticksTask7 = 0, ticksTask8 = 0;

	mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m[3] = {1, 2, 3};

	KF2D myFilter(p, a, q, m);

	/*TASK ONE TEST*/
	XTime_GetTime(&tCur[0]);
	myFilter.task1();
	XTime_GetTime(&tEnd[0]);
	//ticksTask1=(tEnd-tCur)*2;
	/*END TASK ONE TEST*/


	//TASK TWO TEST
	XTime_GetTime(&tCur[1]);
	myFilter.task2();
	XTime_GetTime(&tEnd[1]);
	//ticksTask2=(tEnd-tCur)*2;
	/*END TASK TWO TEST*/


	/*Begin Task 3 testing*/
	XTime_GetTime(&tCur[2]);
	myFilter.task3();
	XTime_GetTime(&tEnd[2]);
	//ticksTask3=(tEnd-tCur)*2;
	/*End task 3 testing*/


	/*Begin Task 4 Testing*/
	XTime_GetTime(&tCur[3]);
	myFilter.task4();
	XTime_GetTime(&tEnd[3]);
	//ticksTask4=(tEnd-tCur)*2;
	/*End Task 4 Testing*/


		XTime_GetTime(&tCur[4]);
	myFilter.task5();
	XTime_GetTime(&tEnd[4]);
	//ticksTask5=(tEnd-tCur)*2;


	XTime_GetTime(&tCur[5]);
	myFilter.task6();
	XTime_GetTime(&tEnd[5]);
	//ticksTask6=(tEnd-tCur)*2;

	myFilter.Y=6;

	XTime_GetTime(&tCur[6]);
		myFilter.task7();
	XTime_GetTime(&tEnd[6]);

	XTime_GetTime(&tCur[7]);
	myFilter.task8();
	XTime_GetTime(&tEnd[7]);

	ticksTask1=(tEnd[0]-tCur[0])*2;
	ticksTask2=(tEnd[1]-tCur[1])*2;
	ticksTask3=(tEnd[2]-tCur[2])*2;
	ticksTask4=(tEnd[3]-tCur[3])*2;
	ticksTask5=(tEnd[4]-tCur[4])*2;
	ticksTask6=(tEnd[5]-tCur[5])*2;
	ticksTask7=(tEnd[6]-tCur[6])*2;
	ticksTask8=(tEnd[7]-tCur[7])*2;

	int i = 0;
	i++;
	i+=3;

	for(;;);
	return 1;
}
