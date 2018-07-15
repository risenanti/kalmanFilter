#include <bits/stdc++.h>

#define desktop
#include "KalmanFilter2D.hpp"

#include <fstream>

using namespace std;

int main()
{
	mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m0 = 1, m1 = 2, m2 = 3;
	KF2D myFilter(p, a, q, m0, m1, m2);
	myFilter.takeMeasurement(1.564);

	fstream file;
	file.open("Kalman Filter Values.txt", fstream::out);

	file << "Default Values" <<endl;
	file << "M Values: " << endl << myFilter.M0 <<", " << myFilter.M1 <<", " << myFilter.M2 <<endl;
	file << "P Values: " <<endl;
	file << myFilter.P.getA1() << ", " << myFilter.P.getA2() << ", " << myFilter.P.getA3() << endl;
	file << myFilter.P.getB1() << ", " << myFilter.P.getB2() << ", " << myFilter.P.getB3() << endl;
	file << myFilter.P.getC1() << ", " << myFilter.P.getC2() << ", " << myFilter.P.getC3() << endl;
	file << "A Values: " <<endl;
	file << myFilter.A.getA1() << ", " << myFilter.A.getA2() << ", " << myFilter.A.getA3() << endl;
	file << myFilter.A.getB1() << ", " << myFilter.A.getB2() << ", " << myFilter.A.getB3() << endl;
	file << myFilter.A.getC1() << ", " << myFilter.A.getC2() << ", " << myFilter.A.getC3() << endl;
	file << "Q Values: " <<endl;
	file << myFilter.Q.getA1() << ", " << myFilter.Q.getA2() << ", " << myFilter.Q.getA3() << endl;
	file << myFilter.Q.getB1() << ", " << myFilter.Q.getB2() << ", " << myFilter.Q.getB3() << endl;
	file << myFilter.Q.getC1() << ", " << myFilter.Q.getC2() << ", " << myFilter.Q.getC3() << endl;
	file << "MU Value: " << endl;
	file << myFilter.MU << endl;
	file << "H Values: " << endl << myFilter.H0 <<", " << myFilter.H1 <<", " << myFilter.H2 <<endl;
	file << "S Value: " << endl;
	file << myFilter.S << endl;
	file << "K Values: " << endl << myFilter.K0 <<", " << myFilter.K1 <<", " << myFilter.K2 <<endl;
	file << "Y Value: " << endl;
	file << myFilter.Y << endl<<endl;


	file << "----------------------------"<<endl<<endl;


	myFilter.predict();
	myFilter.update();


	file << "After Run Values" <<endl;
	file << "M Values: " << endl << myFilter.M0 <<", " << myFilter.M1 <<", " << myFilter.M2 <<endl;
	file << "P Values: " <<endl;
	file << myFilter.P.getA1() << ", " << myFilter.P.getA2() << ", " << myFilter.P.getA3() << endl;
	file << myFilter.P.getB1() << ", " << myFilter.P.getB2() << ", " << myFilter.P.getB3() << endl;
	file << myFilter.P.getC1() << ", " << myFilter.P.getC2() << ", " << myFilter.P.getC3() << endl;
	file << "A Values: " <<endl;
	file << myFilter.A.getA1() << ", " << myFilter.A.getA2() << ", " << myFilter.A.getA3() << endl;
	file << myFilter.A.getB1() << ", " << myFilter.A.getB2() << ", " << myFilter.A.getB3() << endl;
	file << myFilter.A.getC1() << ", " << myFilter.A.getC2() << ", " << myFilter.A.getC3() << endl;
	file << "Q Values: " <<endl;
	file << myFilter.Q.getA1() << ", " << myFilter.Q.getA2() << ", " << myFilter.Q.getA3() << endl;
	file << myFilter.Q.getB1() << ", " << myFilter.Q.getB2() << ", " << myFilter.Q.getB3() << endl;
	file << myFilter.Q.getC1() << ", " << myFilter.Q.getC2() << ", " << myFilter.Q.getC3() << endl;
	file << "MU Value: " << endl;
	file << myFilter.MU << endl;
	file << "H Values: " << endl << myFilter.H0 <<", " << myFilter.H1 <<", " << myFilter.H2 <<endl;
	file << "S Value: " << endl;
	file << myFilter.S << endl;
	file << "K Values: " << endl << myFilter.K0 <<", " << myFilter.K1 <<", " << myFilter.K2 <<endl;
	file << "Y Value: " << endl;
	file << myFilter.Y << endl;

	file.close();
    return 0;
}
