#include <stdio.h>
#include <iostream>

#include <math.h>
#include <iomanip>
#include <cstdlib>

#define desktop
#define debug
#include "mat3.hpp"
#include "mat2.hpp"

using namespace std;

int main()
{
	mat2 a(1,2,3,4), b(3,4,5,6), c;
	//mat2 b;
	c.print();
	cout<<endl<<endl;

	c = a/b;
	c.print();

	//cout<<endl<<endl;
	//a.print();

	//cout<<endl<<endl;
	//b.print();

	return 0;
}
