#include <stdio.h>
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include <math.h>

#ifndef KalmanFilter3D_HPP
#define KalmanFilter3D_HPP

class KF3D
{
	public:

	int predict(void);
	int update(void);
	int setMeasurement(float measurementX,float measurementY);

	KF3D();
	KF3D(mat4 p, mat4 a, mat4 q, mat2 s, mat2 r, float *m);

	int task1(void);
	int task2(void);
	int task3(void);
	int task4(void);
	int task5(void);
	int task6(void);
	int task7(void);
	int task8(void);

	float M[4]; //4x1 array
	float MU[2]; //2x1 array
	float H[8]; //2x4 array
	float K[8]; //4x2 array
	mat4 P;
	mat4 A;
	mat4 Q;
	mat2 S;
	mat2 R;
	float Y[2]; // x y measurement

};

KF3D::KF3D()
{
	M[0] = 0; M[1]=0.0; M[2]=0.0; M[3]=0.0;
	Y[0]=(float)0.00; Y[1]=(float)0.00;
}

KF3D::KF3D(mat4 p, mat4 a, mat4 q, mat2 s, mat2 r, float *m)
{
	P = p;
	A = a;
	Q = q;
	S = s;
	R = r;
	M[0] = *m;
	M[1] = *(m+1);
	M[2] = *(m+2);
	M[3] = *(m+3);
	Y[0] = (float)0.00; Y[1]=(float)0.00;
}

int KF3D::setMeasurement(float measurementX,float measurementY)
{
	Y[0] = measurementX;
	Y[1] = measurementY;
	return 1;
}

int KF3D::task1(void)
{
	/*M = A * M */
	float tempM[4] = {M[0],M[1],M[2],M[3]};
	M[0] = A.getA1()*tempM[0] + A.getA2()*tempM[1] + A.getA3()*tempM[2] + A.getA4()*tempM[3];
	M[1] = A.getB1()*tempM[0] + A.getB2()*tempM[1] + A.getB3()*tempM[2] + A.getB4()*tempM[3];
	M[2] = A.getC1()*tempM[0] + A.getC2()*tempM[1] + A.getC3()*tempM[2] + A.getC4()*tempM[3];
	M[3] = A.getD1()*tempM[0] + A.getD2()*tempM[1] + A.getD3()*tempM[2] + A.getD4()*tempM[3];

	return 1;
}

int KF3D::task2(void)
{
	/*P = A*P*A'+Q*/
	P = A*P*(!A)+Q;
	return 1;
}

int KF3D::task3(void)
{
	MU[0] = atan2((M[1] - S.getB1()), (M[0] - S.getA1()));
	MU[1] = atan2((M[1] - S.getB2()), (M[0] - S.getA2()));

	return 1;
}

int KF3D::task4(void)
{
	float F1 = pow((float)(M[0] - S.getA1()), (float)2) + pow((M[1] - S.getB1()), 2);
	float F2 = pow((M[0] - S.getA2()), 2)  +  pow((M[1] - S.getB2()), 2);

	H[0] = -(M[1] - S.getB1())/F1;
	H[1] = (M[0] - S.getA1() ) / F1;

	H[2] = 0;
	H[3] = 0;

	H[4] = -(M[1] - S.getB2()) / F2;

	H[5] = (M[0] - S.getA2()) / F2;

	H[6] = 0;
	H[7] = 0;

	//cout<<H[0] <<", "<<H[1] <<", "<<H[2] <<", "<<H[3] <<","<<endl;
	//cout<<H[4] <<", "<<H[5] <<", "<<H[6] <<", "<<H[7] <<","<<endl;

	return 1;
}

int KF3D::task5(void)
{
	//S = R + H X P X H'

	/*H * P*/
	float tempH[8];
	tempH[0] = H[0]*P.getA1() + H[1]*P.getB1() + H[2]*P.getC1() + H[3]*P.getD1();
	tempH[1] = H[0]*P.getA2() + H[1]*P.getB2() + H[2]*P.getC2() + H[3]*P.getD2();
	tempH[2] = H[0]*P.getA3() + H[1]*P.getB3() + H[2]*P.getC3() + H[3]*P.getD3();
	tempH[3] = H[0]*P.getA4() + H[1]*P.getB4() + H[2]*P.getC4() + H[3]*P.getD4();

	tempH[4] = H[4]*P.getA1() + H[5]*P.getB1() + H[6]*P.getC1() + H[7]*P.getD1();
	tempH[5] = H[4]*P.getA2() + H[5]*P.getB2() + H[6]*P.getC2() + H[7]*P.getD2();
	tempH[6] = H[4]*P.getA3() + H[5]*P.getB3() + H[6]*P.getC3() + H[7]*P.getD3();
	tempH[7] = H[4]*P.getA4() + H[5]*P.getB4() + H[6]*P.getC4() + H[7]*P.getD4();

	/*H * P * H'*/
	float tempMat[4];
	tempMat[0] = tempH[0]*H[0] + tempH[1]*H[1] + tempH[2]*H[2] + tempH[3]*H[3];
	tempMat[1] = tempH[0]*H[4] + tempH[1]*H[5] + tempH[2]*H[6] + tempH[3]*H[7];

	tempMat[2] = tempH[4]*H[0] + tempH[5]*H[1] + tempH[6]*H[2] + tempH[7]*H[3];
	tempMat[3] = tempH[4]*H[4] + tempH[5]*H[5] + tempH[6]*H[6] + tempH[7]*H[7];

	mat2 tempHPH(tempMat[0],tempMat[1], tempMat[2], tempMat[3]);

	S = R+tempHPH;

	return 1;
}

int KF3D::task6(void)
{
	/*Task 6: [4 X 2] K = P X H' X inv(S)*/
	//H[8 = 2 x 4
	float tempK[8];
	/*Begin P * H'*/
	tempK[0] = P.getA1()*H[0] + P.getA2()*H[1] + P.getA3()*H[2] + P.getA4()*H[3];
	tempK[1] = P.getA1()*H[4] + P.getA2()*H[5] + P.getA3()*H[6] + P.getA4()*H[7];

	tempK[2] = P.getB1()*H[0] + P.getB2()*H[1] + P.getB3()*H[2] + P.getB4()*H[3];
	tempK[3] = P.getB1()*H[4] + P.getB2()*H[5] + P.getB3()*H[6] + P.getB4()*H[7];

	tempK[4] = P.getC1()*H[0] + P.getC2()*H[1] + P.getC3()*H[2] + P.getC4()*H[3];
	tempK[5] = P.getC1()*H[4] + P.getC2()*H[5] + P.getC3()*H[6] + P.getC4()*H[7];

	tempK[6] = P.getD1()*H[0] + P.getD2()*H[1] + P.getD3()*H[2] + P.getD4()*H[3];
	tempK[7] = P.getD1()*H[4] + P.getD2()*H[5] + P.getD3()*H[6] + P.getD4()*H[7];
	/*ENDc = p*h' P * H'*/
	mat2 tempS = S.inverse();

	//Testing Failed due to inverse operation on 2x2 matrix being wrong
	K[0] = tempK[0]*tempS.getA1() + tempK[1]*tempS.getB1();
	K[1] = tempK[0]*tempS.getA2() + tempK[1]*tempS.getB2();

	K[2] = tempK[2]*tempS.getA1() + tempK[3]*tempS.getB1();
	K[3] = tempK[2]*tempS.getA2() + tempK[3]*tempS.getB2();

	K[4] = tempK[4]*tempS.getA1() + tempK[5]*tempS.getB1();
	K[5] = tempK[4]*tempS.getA2() + tempK[5]*tempS.getB2();

	K[6] = tempK[6]*tempS.getA1() + tempK[7]*tempS.getB1();
	K[7] = tempK[6]*tempS.getA2() + tempK[7]*tempS.getB2();

	return 1;
}

int KF3D::task7(void)
{
	/*M = M + K * (Y-MU) */

	float tempHold[2];
	tempHold[0] = Y[0] - MU[0];
	tempHold[1] = Y[1] - MU[1];
	float tempK[4];

	tempK[0] = K[0]*tempHold[0] + K[1]*tempHold[0];

	tempK[1] = K[2]*tempHold[0] + K[3]*tempHold[0];
	tempK[2] = K[4]*tempHold[0] + K[5]*tempHold[0];
	tempK[3] = K[6]*tempHold[0] + K[7]*tempHold[0];

	M[0] = M[0] + tempK[0];
	M[1] = M[1] + tempK[1];
	M[2] = M[2] + tempK[2];
	M[3] = M[3] + tempK[3];

    return 1;
}

int KF3D::task8(void)
{
	/*Task 8: P = P – K X S X K'*/
	float tempKS[8];
	tempKS[0] = K[0]*S.getA1() + K[1]*S.getB1();
	tempKS[1] = K[0]*S.getA2() + K[1]*S.getB2();

	tempKS[2] = K[2]*S.getA1() + K[3]*S.getB1();
	tempKS[3] = K[2]*S.getA2() + K[3]*S.getB2();

	tempKS[4] = K[4]*S.getA1() + K[5]*S.getB1();
	tempKS[5] = K[4]*S.getA2() + K[5]*S.getB2();

	tempKS[6] = K[6]*S.getA1() + K[7]*S.getB1();
	tempKS[7] = K[6]*S.getA2() + K[7]*S.getB2();

	mat4 tempKSK;

	tempKSK.a1 = tempKS[0]* K[0] + tempKS[1]*K[1];
	tempKSK.a2 = tempKS[0]* K[2] + tempKS[1]*K[3];
	tempKSK.a3 = tempKS[0]* K[4] + tempKS[1]*K[5];
	tempKSK.a4 = tempKS[0]* K[6] + tempKS[1]*K[7];

	tempKSK.b1 = tempKS[2]* K[0] + tempKS[3]*K[1];
	tempKSK.b2 = tempKS[2]* K[2] + tempKS[3]*K[3];
	tempKSK.b3 = tempKS[2]* K[4] + tempKS[3]*K[5];
	tempKSK.b4 = tempKS[2]* K[6] + tempKS[3]*K[7];

	tempKSK.c1 = tempKS[4]* K[0] + tempKS[5]*K[1];
	tempKSK.c2 = tempKS[4]* K[2] + tempKS[5]*K[3];
	tempKSK.c3 = tempKS[4]* K[4] + tempKS[5]*K[5];
	tempKSK.c4 = tempKS[4]* K[6] + tempKS[5]*K[7];

	tempKSK.d1 = tempKS[6]* K[0] + tempKS[7]*K[1];
	tempKSK.d2 = tempKS[6]* K[2] + tempKS[7]*K[3];
	tempKSK.d3 = tempKS[6]* K[4] + tempKS[7]*K[5];
	tempKSK.d4 = tempKS[6]* K[6] + tempKS[7]*K[7];

	P = P - tempKSK;
	P.print();

	return 1;
}

#endif
