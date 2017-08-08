#include <stdio.h>

#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "KalmanFilter3D.hpp"

#include "xtime_l.h"
#include "xparameters.h"

using namespace std;
int main(){

XTime tEnd[8], tCur[8];
	unsigned long ticksTask1 = 0, ticksTask2 = 0, ticksTask3 = 0, ticksTask4 = 0,ticksTask5 = 0,
	ticksTask6 = 0, ticksTask7 = 0, ticksTask8 = 0;

	for (int i = 0; i < 8; i++)
		{
			tEnd[i] = 0;
			tCur[i] = 0;
		}

	double m[4];

	for (int i = 0; i < 4; i++) {m[i] = 0;}

	mat2 r(1,2,3,4);
	mat2 s=r;
	mat4 q(1,2,3,4,5,6,7,8,9,10, 11,12,13,14,15,16);
	mat4 a(17,18,19,1,2,3,4,5,6,7,8,9,0,11,15,16);
	mat4 p=a-q;
	KF3D myFilter(p, a, q, s,r, m);

	myFilter.setMeasurement(0.01,1.02);

	/*TASK ONE TEST*/
			XTime_GetTime(&tCur[0]);
			myFilter.task1();
			XTime_GetTime(&tEnd[0]);

			XTime_GetTime(&tCur[1]);
			myFilter.task2();
			XTime_GetTime(&tEnd[1]);

			XTime_GetTime(&tCur[2]);
			myFilter.task3();
			XTime_GetTime(&tEnd[2]);

			XTime_GetTime(&tCur[3]);
			myFilter.task4();
			XTime_GetTime(&tEnd[3]);

			XTime_GetTime(&tCur[4]);
			myFilter.task5();
			XTime_GetTime(&tEnd[4]);

			XTime_GetTime(&tCur[5]);
			myFilter.task6();
			XTime_GetTime(&tEnd[5]);

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
			i+=ticksTask1;

		for(;;){}

	return 0;
}
