#include <iostream>
#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"

#include <stdint.h>
using namespace std;

struct kf_values{
	double M0;
	double M1;
	double M2;
	mat3 A;
	mat3 P;
	mat3 Q;
	double MU;
	double H0;
	double H1;
	double H2;

	double S;
	double K0, K1, K2;
	double Y;
};


uint64_t rdtsc(){
    unsigned int lo,hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}

kf_values filter(kf_values value){
	//M=A*M
	uint64_t temp = 0, cycles = 0;

	temp = rdtsc();
	double tempM0 = value.M0, tempM1 = value.M1, tempM2 = value.M2;
	value.M0 = value.A.getA1()*tempM0+value.A.getA2()*tempM1 + value.A.getA3()*tempM2;
	value.M1 = value.A.getB1()*tempM0+value.A.getB2()*tempM1 + value.A.getB3()*tempM2;
	value.M2 = value.A.getC1()*tempM0+value.A.getC2()*tempM1 + value.A.getC3()*tempM2;
	cycles = rdtsc();
	cout<< "Task 1: " << (cycles-temp) << '\n';

	//task2
	//P=A*P*A.transpose()+Q;
	temp = rdtsc();
	value.P=value.A*value.P*value.A.transpose()+value.Q;
	cycles = rdtsc();
	cout<< "Task 2: " << (cycles-temp) << '\n';

	//task3
	temp = rdtsc();
	//MU = M2*sinf(M0);
	value.MU = value.M2*sin(value.M0);
	cycles = rdtsc();
	cout<< "Task 3: " << (cycles-temp) << '\n';

	//Task4
	temp = rdtsc();
	value.H0 = value.M2*cos(value.M0);
	value.H1 = 0;
	value.H2 = sin(value.M0);
	cycles = rdtsc();
	cout<< "Task 4: " << (cycles-temp) << '\n';

	//Task5
	temp = rdtsc();
	double temp0, temp1, temp2;
	temp0 = value.H0*value.P.getA1()+value.H1*value.P.getB1()+value.H2*value.P.getC1();
	temp1 = value.H0*value.P.getA2()+value.H1*value.P.getB2()+value.H2*value.P.getC2();
	temp2 = value.H0*value.P.getA3()+value.H1*value.P.getB3()+value.H2*value.P.getC3();
	value.S = temp0*value.H0+temp1*value.H1+temp2*value.H2;
	value.S+=1;
	cycles = rdtsc();
	cout<< "Task 5: " << (cycles-temp) << '\n';

	//Task6
	temp = rdtsc();
	value.K0 = (value.P.getA1()*value.H0+value.P.getB1()*value.H1+value.P.getC1()*value.H2);
	value.K1 = (value.P.getA2()*value.H0+value.P.getB2()*value.H1+value.P.getC2()*value.H2);
	value.K2 = (value.P.getA3()*value.H0+value.P.getB3()*value.H1+value.P.getC3()*value.H2);
	cycles = rdtsc();
	cout<< "Task 6: " << (cycles-temp) << '\n';

	//task7
	temp = rdtsc();
	value.M0 = value.M0+value.K0*(value.Y-value.MU);
	value.M1 = value.M0+value.K1*(value.Y-value.MU);
	value.M2 = value.M0+value.K2*(value.Y-value.MU);
	cycles = rdtsc();
	cout<< "Task 7: " << (cycles-temp) << '\n';

	//task8
	temp = rdtsc();
	temp0 = value.K0*value.S;
	temp1 = value.K1*value.S;
	temp2 = value.K2*value.S;

	mat3 tempMat(temp0 * value.K0, temp0 * value.K1, temp0 * value.K2, temp1 * value.K0,
			temp1 * value.K1, temp1 * value.K2, temp2 * value.K0, temp2 * value.K1, temp2 * value.K2);
	value.P = value.P-tempMat;
	cycles = rdtsc();
	cout<< "Task 8: " << (cycles-temp) << '\n';

	return value;
}

int main() {
	mat3 a(2.66,0,22,2,30,-2,0,1,1);
	mat3 q(22,11,10, 15,5,3, 2,6,7);
	mat3 p(3,0,2,2,0,-2,0,1,1);

	kf_values value;
	value.A  = a;
	value.M0 = 1;
	value.M1 = 2;
	value.M2 = 3;
	value.Q  = q;
	value.P  = p;
	value.Y  = 1.564;

	value = filter(value);

	return 0;
}
