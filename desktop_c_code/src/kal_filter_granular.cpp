//============================================================================
// Name        : kal_filter_granular.cpp
// Author      :
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <fstream>
#include <math.h>
#include "mat3.hpp"
#include "mat2.hpp"

using namespace std;

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
	value.MU = value.M2*sinf(value.M0);

	//Task4
	value.H0 = value.M2*cosf(value.M0);
	value.H1 = 0;
	value.H2 = sinf(value.M0);

	//Task5
	float temp0, temp1, temp2;
	temp0 = value.H0*value.P.getA1()+value.H1*value.P.getB1()+value.H2*value.P.getC1();
	temp1 = value.H0*value.P.getA2()+value.H1*value.P.getB2()+value.H2*value.P.getC2();
	temp2 = value.H0*value.P.getA3()+value.H1*value.P.getB3()+value.H2*value.P.getC3();
	value.S = temp0*value.H0+temp1*value.H1+temp2*value.H2;
	value.S+=1;

	//Task6
	value.K0 = (value.P.getA1()*value.H0 + value.P.getB1()*value.H1 + value.P.getC1()*value.H2) /value.S;
	value.K1 = (value.P.getB1()*value.H0 + value.P.getB2()*value.H1+ value.P.getB3()*value.H2)  /value.S;
	value.K2 = (value.P.getC1()*value.H0 + value.P.getC2()*value.H1 + value.P.getC3()*value.H2) /value.S;

	//task7
	value.M0 = value.M0+value.K0 *(value.Y-value.MU);
	value.M1 = value.M1+value.K1 *(value.Y-value.MU);
	value.M2 = value.M2+value.K2 *(value.Y-value.MU);

	//task8
	temp0 = value.K0*value.S;
	temp1 = value.K1*value.S;
	temp2 = value.K2*value.S;

	mat3 tempMat(temp0 * value.K0, temp0 * value.K1, temp0 * value.K2, temp1 * value.K0,
			temp1 * value.K1, temp1 * value.K2, temp2 * value.K0, temp2 * value.K1, temp2 * value.K2);
	value.P = value.P-tempMat;

	return value;
}

//KF2D::KF2D(mat3 p, mat3 a, mat3 q,float m0, float m1, float m2)
/*
 * 	mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
 *	float m0 = 1, m1 = 2, m2 = 3;
 *	KF2D value(p, a, q, m0, m1, m2);
 *	value.takeMeasurement(1.564);
 */

int main() {
	mat3 a( 1,   0.01,  0,
			0,      1,  0,
			0,      0,  1);

	mat3 q( 0,      0,  0,
		    0,  0.002,  0,
		    0,      0,  0.00);
	mat3 p( 3,      0,  0,
		    0,      3,  3,
		    0,      0,  3);

	kf_values value;
	value.A  = a;
	value.M0 = 0;
	value.M1 = 10;
	value.M2 = 1;
	value.Q  = q;
	value.P  = p;
	value.Y  = 1.834366773357689;
	value.H0 = 0;
	value.H1 = 0;
	value.H2 = 0;
	value.S =  0;
	value.K0 = 0;
	value.K1 = 0;
	value.K2 = 0;
	value.MU = 0;

	//mat3 sX = a*p;
	fstream file;
	file.open("Kalman Filter Values.txt", fstream::out);

	file << "Default Values" <<endl;
	file << "M Values: " << endl << value.M0 <<", " << value.M1 <<", " << value.M2 <<endl;
	file << "P Values: " <<endl;
	file << value.P.getA1() << ", " << value.P.getA2() << ", " << value.P.getA3() << endl;
	file << value.P.getB1() << ", " << value.P.getB2() << ", " << value.P.getB3() << endl;
	file << value.P.getC1() << ", " << value.P.getC2() << ", " << value.P.getC3() << endl;
	file << "A Values: " <<endl;
	file << value.A.getA1() << ", " << value.A.getA2() << ", " << value.A.getA3() << endl;
	file << value.A.getB1() << ", " << value.A.getB2() << ", " << value.A.getB3() << endl;
	file << value.A.getC1() << ", " << value.A.getC2() << ", " << value.A.getC3() << endl;
	file << "Q Values: " <<endl;
	file << value.Q.getA1() << ", " << value.Q.getA2() << ", " << value.Q.getA3() << endl;
	file << value.Q.getB1() << ", " << value.Q.getB2() << ", " << value.Q.getB3() << endl;
	file << value.Q.getC1() << ", " << value.Q.getC2() << ", " << value.Q.getC3() << endl;
	file << "MU Value: " << endl;
	file << value.MU << endl;
	file << "H Values: " << endl << value.H0 <<", " << value.H1 <<", " << value.H2 <<endl;
	file << "S Value: " << endl;
	file << value.S << endl;
	file << "K Values: " << endl << value.K0 <<", " << value.K1 <<", " << value.K2 <<endl;
	file << "Y Value: " << endl;
	file << value.Y << endl<<endl;


	file << "----------------------------"<<endl<<endl;

	value = filter(value);

	file << "After Run Values" <<endl;
	file << "M Values: " << endl << value.M0 <<", " << value.M1 <<", " << value.M2 <<endl;
	file << "P Values: " <<endl;
	file << value.P.getA1() << ", " << value.P.getA2() << ", " << value.P.getA3() << endl;
	file << value.P.getB1() << ", " << value.P.getB2() << ", " << value.P.getB3() << endl;
	file << value.P.getC1() << ", " << value.P.getC2() << ", " << value.P.getC3() << endl;
	file << "A Values: " <<endl;
	file << value.A.getA1() << ", " << value.A.getA2() << ", " << value.A.getA3() << endl;
	file << value.A.getB1() << ", " << value.A.getB2() << ", " << value.A.getB3() << endl;
	file << value.A.getC1() << ", " << value.A.getC2() << ", " << value.A.getC3() << endl;
	file << "Q Values: " <<endl;
	file << value.Q.getA1() << ", " << value.Q.getA2() << ", " << value.Q.getA3() << endl;
	file << value.Q.getB1() << ", " << value.Q.getB2() << ", " << value.Q.getB3() << endl;
	file << value.Q.getC1() << ", " << value.Q.getC2() << ", " << value.Q.getC3() << endl;
	file << "MU Value: " << endl;
	file << value.MU << endl;
	file << "H Values: " << endl << value.H0 <<", " << value.H1 <<", " << value.H2 <<endl;
	file << "S Value: " << endl;
	file << value.S << endl;
	file << "K Values: " << endl << value.K0 <<", " << value.K1 <<", " << value.K2 <<endl;
	file << "Y Value: " << endl;
	file << value.Y << endl;

	file.close();

	return 0;
}
