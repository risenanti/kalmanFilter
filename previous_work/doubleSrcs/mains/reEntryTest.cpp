#include <stdio.h>

#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "mat5.hpp"

#include "KalmanFilter3D.hpp"
#include "KalmanFilterReEntry.hpp"

#include "xtime_l.h"
#include "xparameters.h"

using namespace std;
int main(){

XTime tEnd[9], tCur[9];
	unsigned long ticksTask0 = 0 ,ticksTask1 = 0, ticksTask2 = 0, ticksTask3 = 0, ticksTask4 = 0,ticksTask5 = 0,
	ticksTask6 = 0, ticksTask7 = 0, ticksTask8 = 0;

	for (int i = 0; i < 8; i++)
		{
			tEnd[i] = 0;
			tCur[i] = 0;
		}

	mat5 q(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);
		mat5 p(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);

		mat2 s(1,2,3,4);
		mat2 r(1,1,2,5);
		double m[5] = {1.1, 2.2, 3.3, 4.6, 1.7};
		double para[7] = {1,2,3,4,5,6,7};

		KFRENTER myFilter(p,q,s,r,m,para);

		myFilter.Y[0] = (double)2.0;
		myFilter.Y[1] = (double)4.0;

	/*TASK ONE TEST*/

			XTime_GetTime(&tCur[1]);
			myFilter.task1();
			XTime_GetTime(&tEnd[1]);

			XTime_GetTime(&tCur[2]);
			myFilter.task2();
			XTime_GetTime(&tEnd[2]);

			XTime_GetTime(&tCur[3]);
			myFilter.task3();
			XTime_GetTime(&tEnd[3]);

			XTime_GetTime(&tCur[4]);
			myFilter.task4();
			XTime_GetTime(&tEnd[4]);

			XTime_GetTime(&tCur[5]);
			myFilter.task5();
			XTime_GetTime(&tEnd[5]);

			XTime_GetTime(&tCur[6]);
			myFilter.task6();
			XTime_GetTime(&tEnd[6]);

			XTime_GetTime(&tCur[7]);
			myFilter.task7();
			XTime_GetTime(&tEnd[7]);

			XTime_GetTime(&tCur[8]);
			myFilter.task8();
			XTime_GetTime(&tEnd[8]);

			ticksTask0=(tEnd[0]-tCur[0])*2;
			ticksTask1=(tEnd[1]-tCur[1])*2;
			ticksTask2=(tEnd[2]-tCur[2])*2;
			ticksTask3=(tEnd[3]-tCur[3])*2;
			ticksTask4=(tEnd[4]-tCur[4])*2;
			ticksTask5=(tEnd[5]-tCur[5])*2;
			ticksTask6=(tEnd[6]-tCur[6])*2;
			ticksTask7=(tEnd[7]-tCur[7])*2;
			ticksTask8=(tEnd[8]-tCur[8])*2;

			int i = 0;
			i++;
			i+=ticksTask1;

		for(;;){}

	return 0;
}
