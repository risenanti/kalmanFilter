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
	float R1, V1, G, D;
	float b;

	R1 = sqrt((pow(M[0], 2)+ pow(M[1],2)));
	V1 = sqrt(pow(M[2],2)+pow(M[3],2));
	b  = Param[1] * exp(M[4]);
	D = b * exp((Param[4]-R1)/Param[2]) * V1;
	G = -Param[3]/(pow(R1,3));

	float dR_dx1 = M[0]/R1;
	float dR_dx2 = M[1]/R1;
	float dV_dx3 = M[2]/V1;
	float dV_dx4 = M[3]/V1;
	float db_dx5 = b;

	float dD_dx1 = b * (-dR_dx1/Param[2]) * exp((Param[4]-R1)/Param[2]) * V1;
	float dD_dx2 = b * (-dR_dx2/Param[2]) * exp((Param[4]-R1)/Param[2]) * V1;
	float dD_dx3 = b * (exp((Param[4]-R1)/Param[2]) * dV_dx3);
	float dD_dx4 = b * (exp((Param[4]-R1)/Param[2]) * dV_dx4);
	float dD_dx5 = db_dx5 * exp((Param[4]-R1)/Param[2]) * V1;
	float dG_dx1 = -Param[3]*(-3*dR_dx1/pow(R1,4));
	float dG_dx2 = -Param[3]*(-3*dR_dx2/pow(R1,4));

	float tempDFc1 = dD_dx1 * M[2] + dG_dx1 * M[0] + G;
	float tempDFc2 = dD_dx2 * M[2] + dG_dx2 * M[0];
	float tempDFc3 = dD_dx3 * M[2] + D;
	float tempDFc4 = dD_dx4 * M[2];
	float tempDFc5 = dD_dx5 * M[2];

	float tempDFd1 = dD_dx1 * M[3] + dG_dx1 * M[1];
	float tempDFd2 = dD_dx2 * M[3] + dG_dx2 * M[1] + G;
	float tempDFd3 = dD_dx3 * M[3];
	float tempDFd4 = dD_dx4 * M[3] + D;
	float tempDFd5 = dD_dx5 * M[3];

	mat5 df( (float) 0.0, (float) 0.0, (float) 1.0, (float) 0.0, (float) 0.0,
			 (float) 0.0, (float) 0.0, (float) 0.0, (float) 1.0, (float) 0.0,
			 tempDFc1, tempDFc2, tempDFc3, tempDFc4, tempDFc5,
			 tempDFd1, tempDFd2, tempDFd3, tempDFd4, tempDFd5,
			 (float) 0.0, (float) 0.0, (float) 0.0, (float) 0.0, (float) 0.0);

	/*mat5 tempA =((df.getA1()*Param[0])+(float)1.0, df.getA2()*Param[0]+(float)1.0, df.getA3()*Param[0]+(float)1.0, df.getA4()*Param[0]+(float)1.0, df.getA5()*Param[0]+(float)1.0,
				 df.getB1()*Param[0], df.getB2()*Param[0], df.getB3()*Param[0], df.getB4()*Param[0], df.getB5()*Param[0],
				 df.getC1()*Param[0], df.getC2()*Param[0], df.getC3()*Param[0], df.getC4()*Param[0], df.getC5()*Param[0],
				 df.getD1()*Param[0], df.getD2()*Param[0], df.getD3()*Param[0], df.getD4()*Param[0], df.getD5()*Param[0],
				 df.getE1()*Param[0], df.getE2()*Param[0], df.getE3()*Param[0], df.getE4()*Param[0], df.getE5()*Param[0]
				);
	A=tempA;*/

	return 1;
}

#endif
