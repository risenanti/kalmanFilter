#ifndef mat5_HPP
#define mat5_HPP
#include <stdio.h>
using namespace std;

class mat5
{
	public:
	bool operator=(const mat5& other);
	mat5 operator+(const mat5& other);
	mat5 operator-(const mat5& other);
	mat5 operator!(void);
	mat5 operator*(const mat5& other);
	mat5 operator/(const mat5& other);

	mat5(float a1, float a2, float a3, float a4, float a5, float b1, float b2, float b3, float b4, float b5,
			 float c1, float c2, float c3, float c4, float c5, float d1, float d2, float d3, float d4,
			 float d5, float e1, float e2, float e3, float e4, float e5);
	mat5();
	mat5 multi(mat5 mult);
	mat5 divide(mat5 divide);
	mat5 add(mat5 add);
	mat5 subtract(mat5 sub);
	mat5 transpose(void);
	mat5 inverse(void);
	int setElements(mat5 setElem);
	void print(void);

	float getA1(void);
	float getA2(void);
	float getA3(void);
	float getA4(void);
	float getA5(void);

	float getB1(void);
	float getB2(void);
	float getB3(void);
	float getB4(void);
	float getB5(void);

	float getC1(void);
	float getC2(void);
	float getC3(void);
	float getC4(void);
	float getC5(void);

	float getD1(void);
	float getD2(void);
	float getD3(void);
	float getD4(void);
	float getD5(void);

	float getE1(void);
	float getE2(void);
	float getE3(void);
	float getE4(void);
	float getE5(void);

	float a1, a2, a3, a4, a5, b1, b2, b3, b4, b5, c1, c2, c3, c4, c5, d1, d2 ,d3 ,d4, d5, e1, e2, e3, e4, e5;
};

mat5::mat5()
{
	a1 = 0.0; a2 = 0.0; a3 = 0.0; a4 = 0.0; a5 = 0.0;
	b1 = 0.0; b2 = 0.0; b3 = 0.0; b4 = 0.0; b5 = 0.0;
	c1 = 0.0; c2 = 0.0; c3 = 0.0; c4 = 0.0; c5 = 0.0;
	d1 = 0.0; d2 = 0.0; d3 = 0.0; d4 = 0.0; d5 = 0.0;
	e1 = 0.0; e2 = 0.0; e3 = 0.0; e4 = 0.0; e5 = 0.0;
}

mat5::mat5(float a1, float a2, float a3, float a4, float a5, float b1, float b2, float b3, float b4, float b5,
			 float c1, float c2, float c3, float c4, float c5, float d1, float d2, float d3, float d4,
			 float d5, float e1, float e2, float e3, float e4, float e5)
{
	this->a1=a1; this->a2=a2; this->a3=a3; this->a4=a4; this->a5=a5;
	this->b1=b1; this->b2=b2; this->b3=b3; this->b4=b4; this->b5=b5;
	this->c1=c1; this->c2=c2; this->c3=c3; this->c4=c4; this->c5=c5;
	this->d1=d1; this->d2=d2; this->d3=d3; this->d4=d4; this->d5=d5;
	this->e1=e1; this->e2=e2; this->e3=e3; this->e4=e4; this->e5=e5;
}

bool mat5::operator=(const mat5& other)
{
	this->setElements(other);
	return true;
}

mat5 mat5::operator+(const mat5& other)
{
	return this->add(other);
}
mat5 mat5::operator-(const mat5& other)
{
	return subtract(other);
}

mat5 mat5::operator*(const mat5& other)
{
	return multi(other);
}

mat5 mat5::multi(mat5 mult)
{
	mat5 tempMulti(this->a1, this->a2, this->a3, this->a4, this->a5,
		     this->b1, this->b2, this->b3, this->b4, this->b5,
		     this->c1, this->c2, this->c3, this->c4, this->c5,
		     this->d1, this->d2, this->d3, this->d4, this->d5,
		     this->e1, this->e2, this->e3, this->e4, this->e5);

	tempMulti.a1 = a1*mult.a1 + a2*mult.b1 + a3*mult.c1 + a4*mult.d1 + a5*mult.e1;
	tempMulti.a2 = a1*mult.a2 + a2*mult.b2 + a3*mult.c2 + a4*mult.d2 + a5*mult.e2;
	tempMulti.a3 = a1*mult.a3 + a2*mult.b3 + a3*mult.c3 + a4*mult.d3 + a5*mult.e3;
	tempMulti.a4 = a1*mult.a4 + a2*mult.b4 + a3*mult.c4 + a4*mult.d4 + a5*mult.e4;
	tempMulti.a5 = a1*mult.a5 + a2*mult.b5 + a3*mult.c5 + a4*mult.d5 + a5*mult.e5;

	tempMulti.b1 = b1*mult.a1 + b2*mult.b1 + b3*mult.c1 + b4*mult.d1 + b5*mult.e1;
	tempMulti.b2 = b1*mult.a2 + b2*mult.b2 + b3*mult.c2 + b4*mult.d2 + b5*mult.e2;
	tempMulti.b3 = b1*mult.a3 + b2*mult.b3 + b3*mult.c3 + b4*mult.d3 + b5*mult.e3;
	tempMulti.b4 = b1*mult.a4 + b2*mult.b4 + b3*mult.c4 + b4*mult.d4 + b5*mult.e4;
	tempMulti.b5 = b1*mult.a5 + b2*mult.b5 + b3*mult.c5 + b4*mult.d5 + b5*mult.e5;

	tempMulti.c1 = c1*mult.a1 + c2*mult.b1 + c3*mult.c1 + c4*mult.d1 + c5*mult.e1;
	tempMulti.c2 = c1*mult.a2 + c2*mult.b2 + c3*mult.c2 + c4*mult.d2 + c5*mult.e2;
	tempMulti.c3 = c1*mult.a3 + c2*mult.b3 + c3*mult.c3 + c4*mult.d3 + c5*mult.e3;
	tempMulti.c4 = c1*mult.a4 + c2*mult.b4 + c3*mult.c4 + c4*mult.d4 + c5*mult.e4;
	tempMulti.c5 = c1*mult.a5 + c2*mult.b5 + c3*mult.c5 + c4*mult.d5 + c5*mult.e5;

	tempMulti.d1 = d1*mult.a1 + d2*mult.b1 + d3*mult.c1 + d4*mult.d1 + d5*mult.e1;
	tempMulti.d2 = d1*mult.a2 + d2*mult.b2 + d3*mult.c2 + d4*mult.d2 + d5*mult.e2;
	tempMulti.d3 = d1*mult.a3 + d2*mult.b3 + d3*mult.c3 + d4*mult.d3 + d5*mult.e3;
	tempMulti.d4 = d1*mult.a4 + d2*mult.b4 + d3*mult.c4 + d4*mult.d4 + d5*mult.e4;
	tempMulti.d5 = d1*mult.a5 + d2*mult.b5 + d3*mult.c5 + d4*mult.d5 + d5*mult.e5;

	tempMulti.e1 = e1*mult.a1 + e2*mult.b1 + e3*mult.c1 + e4*mult.d1 + e5*mult.e1;
	tempMulti.e2 = e1*mult.a2 + e2*mult.b2 + e3*mult.c2 + e4*mult.d2 + e5*mult.e2;
	tempMulti.e3 = e1*mult.a3 + e2*mult.b3 + e3*mult.c3 + e4*mult.d3 + e5*mult.e3;
	tempMulti.e4 = e1*mult.a4 + e2*mult.b4 + e3*mult.c4 + e4*mult.d4 + e5*mult.e4;
	tempMulti.e5 = e1*mult.a5 + e2*mult.b5 + e3*mult.c5 + e4*mult.d5 + e5*mult.e5;

	return tempMulti;
}


mat5 mat5::add(mat5 add)
{
	mat5 tempAdd(this->a1, this->a2, this->a3, this->a4, this->a5,
			     this->b1, this->b2, this->b3, this->b4, this->b5,
			     this->c1, this->c2, this->c3, this->c4, this->c5,
			     this->d1, this->d2, this->d3, this->d4, this->d5,
			     this->e1, this->e2, this->e3, this->e4, this->e5);


	tempAdd.a1 = tempAdd.a1+add.getA1();
	tempAdd.a2 = tempAdd.a2+add.getA2();
	tempAdd.a3 = tempAdd.a3+add.getA3();
	tempAdd.a4 = tempAdd.a4+add.getA4();
	tempAdd.a5 = tempAdd.a5+add.getA5();

	tempAdd.b1 = tempAdd.b1+add.getB1();
	tempAdd.b2 = tempAdd.b2+add.getB2();
	tempAdd.b3 = tempAdd.b3+add.getB3();
	tempAdd.b4 = tempAdd.b4+add.getB4();
	tempAdd.b5 = tempAdd.b5+add.getB5();

	tempAdd.c1 = tempAdd.c1+add.getC1();
	tempAdd.c2 = tempAdd.c2+add.getC2();
	tempAdd.c3 = tempAdd.c3+add.getC3();
	tempAdd.c4 = tempAdd.c4+add.getC4();
	tempAdd.c5 = tempAdd.c5+add.getC5();

	tempAdd.d1 = tempAdd.d1+add.getD1();
	tempAdd.d2 = tempAdd.d2+add.getD2();
	tempAdd.d3 = tempAdd.d3+add.getD3();
	tempAdd.d4 = tempAdd.d4+add.getD4();
	tempAdd.d5 = tempAdd.d5+add.getD5();

	tempAdd.e1 = tempAdd.e1+add.getE1();
	tempAdd.e2 = tempAdd.e2+add.getE2();
	tempAdd.e3 = tempAdd.e3+add.getE3();
	tempAdd.e4 = tempAdd.e4+add.getE4();
	tempAdd.e5 = tempAdd.e5+add.getE5();

	return tempAdd;
}

mat5 mat5::subtract(mat5 sub)
{
	mat5 tempSub(this->a1, this->a2, this->a3, this->a4, this->a5,
		         this->b1, this->b2, this->b3, this->b4, this->b5,
		         this->c1, this->c2, this->c3, this->c4, this->c5,
		         this->d1, this->d2, this->d3, this->d4, this->d5,
		         this->e1, this->e2, this->e3, this->e4, this->e5);
	tempSub.a1 = tempSub.a1 - sub.getA1();
	tempSub.a2 = tempSub.a2 - sub.getA2();
	tempSub.a3 = tempSub.a3 - sub.getA3();
	tempSub.a4 = tempSub.a4 - sub.getA4();
	tempSub.a5 = tempSub.a5 - sub.getA5();

	tempSub.b1 = tempSub.b1 - sub.getB1();
	tempSub.b2 = tempSub.b2 - sub.getB2();
	tempSub.b3 = tempSub.b3 - sub.getB3();
	tempSub.b4 = tempSub.b4 - sub.getB4();
	tempSub.b5 = tempSub.b5 - sub.getB5();

	tempSub.c1 = tempSub.c1 - sub.getC1();
	tempSub.c2 = tempSub.c2 - sub.getC2();
	tempSub.c3 = tempSub.c3 - sub.getC3();
	tempSub.c4 = tempSub.c4 - sub.getC4();
	tempSub.c5 = tempSub.c5 - sub.getC5();

	tempSub.d1 = tempSub.d1 - sub.getD1();
	tempSub.d2 = tempSub.d2 - sub.getD2();
	tempSub.d3 = tempSub.d3 - sub.getD3();
	tempSub.d4 = tempSub.d4 - sub.getD4();
	tempSub.d5 = tempSub.d5 - sub.getD5();

	tempSub.e1 = tempSub.e1 - sub.getE1();
	tempSub.e2 = tempSub.e2 - sub.getE2();
	tempSub.e3 = tempSub.e3 - sub.getE3();
	tempSub.e4 = tempSub.e4 - sub.getE4();
	tempSub.e5 = tempSub.e5 - sub.getE5();
	return tempSub;
}

int mat5::setElements(mat5 setElem)
{
	this->a1 = setElem.a1;
	this->a2 = setElem.a2;
	this->a3 = setElem.a3;
	this->a4 = setElem.a4;
	this->a5 = setElem.a5;

	this->b1 = setElem.b1;
	this->b2 = setElem.b2;
	this->b3 = setElem.b3;
	this->b4 = setElem.b4;
	this->b5 = setElem.b5;

	this->c1 = setElem.c1;
	this->c2 = setElem.c2;
	this->c3 = setElem.c3;
	this->c4 = setElem.c4;
	this->c5 = setElem.c5;

	this->d1 = setElem.d1;
	this->d2 = setElem.d2;
	this->d3 = setElem.d3;
	this->d4 = setElem.d4;
	this->d5 = setElem.d5;

	this->e1 = setElem.e1;
	this->e2 = setElem.e2;
	this->e3 = setElem.e3;
	this->e4 = setElem.e4;
	this->e5 = setElem.e5;

	return 1;
}

float mat5::getA1(void) {return a1;}
float mat5::getA2(void) {return a2;}
float mat5::getA3(void) {return a3;}
float mat5::getA4(void) {return a4;}
float mat5::getA5(void) {return a5;}

float mat5::getB1(void) {return b1;}
float mat5::getB2(void) {return b2;}
float mat5::getB3(void) {return b3;}
float mat5::getB4(void) {return b4;}
float mat5::getB5(void) {return b5;}

float mat5::getC1(void) {return c1;}
float mat5::getC2(void) {return c2;}
float mat5::getC3(void) {return c3;}
float mat5::getC4(void) {return c4;}
float mat5::getC5(void) {return c5;}

float mat5::getD1(void) {return d1;}
float mat5::getD2(void) {return d2;}
float mat5::getD3(void) {return d3;}
float mat5::getD4(void) {return d4;}
float mat5::getD5(void) {return d5;}

float mat5::getE1(void) {return e1;}
float mat5::getE2(void) {return e2;}
float mat5::getE3(void) {return e3;}
float mat5::getE4(void) {return e4;}
float mat5::getE5(void) {return e5;}

	#ifdef desktop
	void mat5::print(void)
	{
		cout <<a1 <<", "<<a2<<", " <<a3<<", " <<a4<<", " <<a5<<endl;
		cout <<b1 <<", "<<b2<<", " <<b3<<", " <<b4<<", " <<b5<<endl;
		cout <<c1 <<", "<<c2<<", " <<c3<<", " <<c4<<", " <<c5<<endl;
		cout <<d1 <<", "<<d2<<", " <<d3<<", " <<d4<<", " <<d5<<endl;
		cout <<e1 <<", "<<e2<<", " <<e3<<", " <<e4<<", " <<e5<<endl;
	}
	#endif

	#ifdef zybo
	#include "xparameters.h"
	void mat5::print(void)
	{

		char buffer[30];
		sprintf(buffer,"%f, %f, %f, %f, %f\n", a1, a2, a3, a4, a5);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f, %f\n", b1, b2, b3, b4, b5);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f, %f\n", c1, c2, c3, c4, c5);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f, %f\n", d1, d2, d3, d4, d5);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f, %f\n", e1, e2, e3, e4, e5);
		xil_printf("%s",buffer);
	}
	#endif

#endif
