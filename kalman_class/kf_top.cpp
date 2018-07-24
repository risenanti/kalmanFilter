#include "KalmanFilter2D.hpp"

#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "hls_math.h"
#include "algorithm"

mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m0 = 1, m1 = 2, m2 = 3;
	KF2D myFilter2(p, a, q, m0, m1, m2);

KF2D test2(float measurement){
	myFilter2.takeMeasurement(measurement);
	myFilter2.predict();
	return myFilter2;
}

struct kf_values{
	float M0;
	float M1;
	float M2;
	mat3 A;
	mat3 P;
	mat3 Q;
	float MU;
	float H0;
	float H1;
	float H2;

	float S;
	float K0, K1, K2;
	float Y;
};

kf_values filter(kf_values value){
	//M=A*M
	float tempM0 = value.M0, tempM1 = value.M1, tempM2 = value.M2;
	value.M0 = value.A.getA1()*tempM0+value.A.getA2()*tempM1 + value.A.getA3()*tempM2;
	value.M1 = value.A.getB1()*tempM0+value.A.getB2()*tempM1 + value.A.getB3()*tempM2;
	value.M2 = value.A.getC1()*tempM0+value.A.getC2()*tempM1 + value.A.getC3()*tempM2;

	//task2
	//P=A*P*A.transpose()+Q;
	value.P=value.A*value.P*value.A.transpose()+value.Q;

	//task3
	//MU = M2*sinf(M0);
	value.MU = value.M2*hls::cordic::sinf(value.M0);

	//Task4
	value.H0 = value.M2*hls::cordic::cosf(value.M0);
	value.H1 = 0;
	value.H2 = hls::cordic::sinf(value.M0);

	//Task5
	float temp0, temp1, temp2;
	temp0 = value.H0*value.P.getA1()+value.H1*value.P.getB1()+value.H2*value.P.getC1();
	temp1 = value.H0*value.P.getA2()+value.H1*value.P.getB2()+value.H2*value.P.getC2();
	temp2 = value.H0*value.P.getA3()+value.H1*value.P.getB3()+value.H2*value.P.getC3();
	value.S = temp0*value.H0+temp1*value.H1+temp2*value.H2;
	value.S+=1;

	//Task6
	value.K0 = (value.P.getA1()*value.H0+value.P.getB1()*value.H1+value.P.getC1()*value.H2);
	value.K1 = (value.P.getA2()*value.H0+value.P.getB2()*value.H1+value.P.getC2()*value.H2);
	value.K2 = (value.P.getA3()*value.H0+value.P.getB3()*value.H1+value.P.getC3()*value.H2);

	//task7
	value.M0 = value.M0+value.K0*(value.Y-value.MU);
	value.M1 = value.M0+value.K1*(value.Y-value.MU);
	value.M2 = value.M0+value.K2*(value.Y-value.MU);

	//task8
	temp0 = value.K0*value.S;
	temp1 = value.K1*value.S;
	temp2 = value.K2*value.S;

	mat3 tempMat(temp0 * value.K0, temp0 * value.K1, temp0 * value.K2, temp1 * value.K0,
			temp1 * value.K1, temp1 * value.K2, temp2 * value.K0, temp2 * value.K1, temp2 * value.K2);
	value.P = value.P-tempMat;

	return value;
}

kf_values task1(kf_values value){
	//M=A*M
		float tempM0 = value.M0, tempM1 = value.M1, tempM2 = value.M2;
		value.M0 = value.A.getA1()*tempM0+value.A.getA2()*tempM1 + value.A.getA3()*tempM2;
		value.M1 = value.A.getB1()*tempM0+value.A.getB2()*tempM1 + value.A.getB3()*tempM2;
		value.M2 = value.A.getC1()*tempM0+value.A.getC2()*tempM1 + value.A.getC3()*tempM2;

		return value;
}

kf_values predict(kf_values value){
	//M=A*M
		float tempM0 = value.M0, tempM1 = value.M1, tempM2 = value.M2;
		value.M0 = value.A.getA1()*tempM0+value.A.getA2()*tempM1 + value.A.getA3()*tempM2;
		value.M1 = value.A.getB1()*tempM0+value.A.getB2()*tempM1 + value.A.getB3()*tempM2;
		value.M2 = value.A.getC1()*tempM0+value.A.getC2()*tempM1 + value.A.getC3()*tempM2;

		//task2
		mat3 tempT2 = value.A*value.P;
		tempT2=tempT2*value.A.transpose();
		tempT2=tempT2+value.Q;
		value.P=tempT2;

		return value;
}


