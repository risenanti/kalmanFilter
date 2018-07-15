#include "KalmanFilter2D.hpp"

#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"
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
};

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

		value.P=value.A*value.P*value.A.transpose()+value.Q;

		return value;
}

int main() {
	mat3 a(2.66,0,22,2,30,-2,0,1,1);
	mat3 q(22,11,10, 15,5,3, 2,6,7);

	kf_values value;
	value.A  = a;
	value.M0 = 1;
	value.M1 = 2;
	value.M2 = 3;
	value.Q  = q;


	value = predict(value);



	return 0;
}
