#include <stdio.h>
#include <iostream>

#include <math.h>
#include <iomanip>
#include <cstdlib>

#define desktop
//#define debug
#include "mat3.hpp"
#include "mat2.hpp"

using namespace std;

int main()
{
	mat3 a(3,0,2,2,0,-2,0,1,1), b(2.66,0,22,2,30,-2,0,1,1), c;
	//c.print();
	//cout<<endl<<endl;

	float M[3]= {1,2,3};
	float tempM[3];
	copy(M, M+3, tempM);
	cout<<tempM[0] <<" " << tempM[1]<<" " << tempM[2]<<endl;
	return 0;
}
