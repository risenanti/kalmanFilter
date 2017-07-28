#include <stdio.h>
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "mat5.hpp"
#include <math.h>

#ifndef KalmanFilterReEntry_HPP
#define KalmanFilterReEntry_HPP

class KFRENTER
{
public:
	float M[5]; //5x1 array
	mat5 P;
	mat5 Q;
	mat5 A;
	mat2 S;
	mat2 R;
	float Param[7]; //7x1 array
	float dot_x[5]; //5x1 array


	KFRENTER(void);
	KFRENTER(mat5 p, mat5 q, mat2 s, mat2 r, float *m, float *param);

	int task0(void);
	int task1(void);
	int task2(void);

};

KFRENTER::KFRENTER(void)
{
	M[0] = (float)0.0; M[1] = (float)0.0; M[2] = (float)0.0;
	M[3] = (float)0.0; M[4] = (float)0.0;
	Param[0] = (float) 0.0; Param[1] = (float) 0.0; Param[2] = (float) 0.0;
	Param[3] = (float) 0.0; Param[4] = (float) 0.0; Param[5] = (float) 0.0;
	Param[6] = (float) 0.0;

	mat5 initMat5( (float)0.0, (float)0.0, (float)0.0, (float)0.0, (float)0.0,
			       (float)0.0, (float)0.0, (float)0.0, (float)0.0, (float)0.0,
				   (float)0.0, (float)0.0, (float)0.0, (float)0.0, (float)0.0,
				   (float)0.0, (float)0.0, (float)0.0, (float)0.0, (float)0.0,
				   (float)0.0, (float)0.0, (float)0.0, (float)0.0, (float)0.0);
	P = initMat5;
	Q = initMat5;
	mat2 initMat2((float)0.0, (float)0.0, (float)0.0, (float)0.0);
	S = initMat2;
	R = initMat2;
}

KFRENTER::KFRENTER(mat5 p, mat5 q, mat2 s, mat2 r, float *m, float *param)
{
	P = p;
	Q = q;
	S = s;
	R = r;
	M[0]= *m; M[1]= *(m+1); M[2]= *(m+2); M[3]= *(m+3); M[4]= *(m+4);
	Param[0] = *param; Param[1] = *(param+1); Param[2] = *(param+2);
	Param[3] = *(param+3); Param[4] = *(param+4); Param[5] = *(param+5);
	Param[6] = *(param+6);
}

int KFRENTER::task0(void)
{
	float R1, V1, G;
	float b;


	R1 = sqrt((pow(M[0], 2)+ pow(M[1],2)));
	V1 = sqrt(pow(M[2],2)+pow(M[3],2));
	b  = Param[1] * exp(M[4]);

	//D = b .* exp((param(5,1)-r)/param(3,1)) * V1

	float tempPara[4] = {(Param[4]-R.getA1())/Param[2], (Param[4]-R.getA2())/Param[2],
			             (Param[4]-R.getB1())/Param[2], (Param[4]-R.getB2())/Param[2]};
	tempPara[0] = exp(tempPara[0]); tempPara[1] = exp(tempPara[1]);
	tempPara[2] = exp(tempPara[2]); tempPara[3] = exp(tempPara[3]);

	tempPara[0] = b*tempPara[0]*V1; tempPara[1] = b*tempPara[1]*V1;
	tempPara[2] = b*tempPara[2]*V1; tempPara[3] = b*tempPara[3]*V1;

	mat2 D(tempPara[0],tempPara[1],tempPara[2],tempPara[3]);
	G = Param[4]/(pow(R1,3));

	float dR_dx1 = M[0]/R1;
	float dR_dx2 = M[1]/R1;
	float dV_dx3 = M[2]/V1;
	float dV_dx4 = M[3]/V1;
	float db_dx5 = b;

	float dD_dx1 = b * (-dR_dx1/Param[2]) * exp(R.getA1()-R1) * V1; //TODO VERIFY R0-R1;
	float dD_dx2 = b * (-dR_dx2/Param[2]) * exp(R.getA1()-R1) * V1; //TODO VERIFY R0-R1;
	float dD_dx3 = b
	float dD_dx4
	float dD_dx5

	return 1;
}

#endif
