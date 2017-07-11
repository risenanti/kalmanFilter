#include <stdio.h>
#include <iostream>

#include <math.h>
#include <iomanip>
#include <cstdlib>

#define desktop
//#define debug
#include "mat2.hpp"
#include "mat3.hpp"
#include "KalmanFilter2D.hpp"

using namespace std;

int main()
{
	mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m[3] = {1, 2, 3};

	KF2D myFilter(p, a, q, m);

	/*TASK ONE TEST*/
	cout<<"BEGIN TASK 1 TESTING"<<endl;
	myFilter.task1();
	for (int i = 0; i< 3; i++)
	{
		cout<<myFilter.M[i] << endl;
	}
	cout<<"END TASK 1 TESTING"<<endl<<endl;
	/*END TASK ONE TEST*/

	//TASK TWO TEST
	cout<<"BEGIN TASK 2 TESTING"<<endl;
	myFilter.task2();
	myFilter.P.print();
	cout<<"END TASK TWO TESTING"<<endl<<endl;
	/*END TASK TWO TEST*/

	/*Begin Task 3 testing*/
	cout<<"BEGIN TASK 3 TESTING"<<endl;
	myFilter.task3();
	cout<<myFilter.MU<<endl;
	cout<<"END OF TASK 3 TESTING"<<endl<<endl;
	/*End task 3 testing*/

	/*Begin Task 4 Testing*/
	cout<<"Begin Task 4 Testing"<<endl;
	myFilter.task4();
	myFilter.task1();
	for (int i = 0; i< 3; i++)
	{
		cout<<myFilter.H[i] <<", ";
	}
	cout<<endl <<"END OF TASK 4 Testing " <<endl<<endl;
	/*End Task 4 Testing*/

	cout<<"Begin Task 5 Test"<<endl;
	myFilter.task5();
	cout<<myFilter.S<<endl;
	cout<<"END Task 5 Test" <<endl<<endl;

	myFilter.task6();

	return 0;
}
