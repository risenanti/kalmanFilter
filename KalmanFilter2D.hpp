#ifndef KalmanFilter2D_HPP
#define KalmanFilter2D_HPP
#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"

using namespace std;
//TODO SETUP CLASS CONSTRUCTOR FOR KF2D to allow testing
class KF2D
{
public:
	int predict();
	int update();
	int takeMeasurement(float measurement);
	int task1();
	int task2();
	int task3();
	int task4();
	int task5();
	int task6();
	int task7();
	int task8();
	KF2D();
	KF2D(mat3 p, mat3 a, mat3 q, float*m);

//private:

	float M[3]; //Nx1 state estimation after prediction step
	mat3 P;     //NxN state covariance after prediction step
	mat3 A;
	mat3 Q;
	float MU;
	float H[3];
	float S;
	float K[3];
	float Y; //Y is new measurement
};

KF2D::KF2D()
{
	this->MU=0;
	this->H[0]=0; this->H[1]=0; this->H[2]=0;
	this->S = 0;
	Y = 0;
}
KF2D::KF2D(mat3 p, mat3 a, mat3 q,float*m)
{
	P = p;
	A = a;
	Q = q;
	M[0] = *m;
	M[1] = *(m+1);
	M[2] = *(m+2);
	MU=0;
	S = 0;
	Y = 0;
}


int KF2D::predict()
{
	this->task1();
	this->task2();
	return 1;
}

int KF2D::update()
{
	task3();
	task4();
	task5();
	task6();
	task7();
	task8();
	return 1;
}

int KF2D::takeMeasurement(float measurement)
{
	Y = measurement;
	return 1;
}

int KF2D::task1()
{
	//M=A*M
	float tempM[3];
	copy(M, M+3, tempM);
	M[0] = A.a1*tempM[0]+A.a2*tempM[1] + A.a3*tempM[2];
	M[1] = A.b1*tempM[0]+A.b2*tempM[1] + A.b3*tempM[2];
	M[2] = A.c1*tempM[0]+A.c2*tempM[1] + A.c3*tempM[2];

	return 1;
}

int KF2D::task2()
{
	P=A*P*A.inverse()+Q;
	return 1;
}

int KF2D::task3()
{
	MU = M[2]*sinf(M[0]);
	return 1;
}

int KF2D::task4()
{
	H[0] = M[2]*cosf(M[0]);
	H[1] = 0;
	H[2] = sinf(M[0]);

	return 1;
}

int KF2D::task5()
{
	//S = 1+H*P*(H');

	/*H*P Begin*/
	float temp[3];
	temp[0] = H[0]*P.a1+H[1]*P.b1+H[2]*P.c1;
	temp[1] = H[0]*P.a2+H[1]*P.b2+H[2]*P.c2;
	temp[2] = H[0]*P.a3+H[1]*P.b3+H[2]*P.c3;
	S = temp[0]*H[0]+temp[1]*H[1]+temp[2]*H[2];
	S+=1;

	return 1;
}

int KF2D::task6()
{
	float temp[3];
	temp[0] = (P.a1*H[0]+P.b1*H[1]+P.c1*H[2]);
	temp[1] = (P.a2*H[0]+P.b2*H[1]+P.c2*H[2]);
	temp[2] = (P.a3*H[0]+P.b3*H[1]+P.c3*H[2]);
	K[0] = temp[0];
	K[1] = temp[1];
	K[2] = temp[2];

	return 1;
}

int KF2D::task7()
{
	M[0] = M[0]+K[0]*(Y-MU);
	M[1] = M[0]+K[1]*(Y-MU);
	M[2] = M[0]+K[2]*(Y-MU);
	return 1;
}

int KF2D::task8()
{
	/*P = P-K*S*K'*/
	float temp[3];
	/*K*S*/
	temp[0] = K[0]*S;
	temp[1] = K[1]*S;
	temp[2] = K[2]*S;

	/*(K*S) * K'*/
	mat3 tempMat(temp[0] * K[0], temp[0] * K[1], temp[0] * K[2], temp[1] * K[0],
			temp[1] * K[1], temp[1] * K[2], temp[2] * K[0], temp[2] * K[1], temp[2] * K[2]);
	/*P- (K*S*K')*/
	P = P-tempMat;
	return 1;
}
#endif
