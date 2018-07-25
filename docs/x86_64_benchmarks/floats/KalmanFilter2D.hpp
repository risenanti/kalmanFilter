#ifndef KalmanFilter2D_HPP
#define KalmanFilter2D_HPP
#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"
#include "algorithm"

#ifdef desktop
using namespace std;
#endif

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
	KF2D(mat3 p, mat3 a, mat3 q,float m0, float m1, float m2);

//private:

	float M0, M1, M2; //M[3]; //Nx1 state estimation after prediction step
	mat3 P;     //NxN state covariance after prediction step
	mat3 A;
	mat3 Q;
	float MU;
	float H0, H1, H2;
	float S;
	float K0, K1, K2;
	float Y; //Y is new measurement
};

KF2D::KF2D()
{
	M0 = 0; M1 = 0; M2 = 0;
	MU=0;
	H0=0; H1=0; H2=0;

	S = 0;
	K0 = 0; K1 = 0; K2 = 0;
	Y = 0;
}
KF2D::KF2D(mat3 p, mat3 a, mat3 q,float m0, float m1, float m2)
{
	M0 = m0; M1 = m1; M2 = m2;
	P = p;
	A = a;
	Q = q;

	MU = 0;
	H0 = 0; H1=0; H2=0;
	S  = 0;
	K0 = 0; K1 = 0; K2 = 0;
	Y  = 0;
}


int KF2D::predict()
{
	task1();
	task2();
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
	float tempM0 = M0, tempM1 = M1, tempM2 = M2;
	M0 = A.getA1()*tempM0+A.getA2()*tempM1 + A.getA3()*tempM2;
	M1 = A.getB1()*tempM0+A.getB2()*tempM1 + A.getB3()*tempM2;
	M2 = A.getC1()*tempM0+A.getC2()*tempM1 + A.getC3()*tempM2;

	return 1;
}

int KF2D::task2()
{
	P=A*P*A.transpose()+Q;
	return 1;
}

int KF2D::task3()
{
	MU = M2*sinf(M0);
	return 1;
}

int KF2D::task4()
{
	H0 = M2*cosf(M0);
	H1 = 0;
	H2 = sinf(M0);

	return 1;
}

int KF2D::task5()
{
	//S = 1+H*P*(H');

	/*H*P Begin*/
	float temp0, temp1, temp2;
	temp0 = H0*P.getA1()+H1*P.getB1()+H2*P.getC1();
	temp1 = H0*P.getA2()+H1*P.getB2()+H2*P.getC2();
	temp2 = H0*P.getA3()+H1*P.getB3()+H2*P.getC3();
	S = temp0*H0+temp1*H1+temp2*H2;
	S+=1;

	return 1;
}

int KF2D::task6()
{
	K0 = (P.getA1()*H0+P.getB1()*H1+P.getC1()*H2);
	K1 = (P.getA2()*H0+P.getB2()*H1+P.getC2()*H2);
	K2 = (P.getA3()*H0+P.getB3()*H1+P.getC3()*H2);

	return 1;
}

int KF2D::task7()
{
	M0 = M0+K0*(Y-MU);
	M1 = M0+K1*(Y-MU);
	M2 = M0+K2*(Y-MU);
	return 1;
}

int KF2D::task8()
{
	/*P = P-K*S*K'*/
	float temp0, temp1, temp2;
	/*K*S*/
	temp0 = K0*S;
	temp1 = K1*S;
	temp2 = K2*S;

	/*(K*S) * K'*/
	mat3 tempMat(temp0 * K0, temp0 * K1, temp0 * K2, temp1 * K0,
			temp1 * K1, temp1 * K2, temp2 * K0, temp2 * K1, temp2 * K2);
	/*P- (K*S*K')*/
	P = P-tempMat;
	return 1;
}
#endif
