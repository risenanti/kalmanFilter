#ifndef mat3_HPP
#define mat3_HPP

#include <stdio.h>
using namespace std;

class mat3
{
	public:
	bool operator=(const mat3& other);
	mat3 operator+(const mat3& other);
	mat3 operator-(const mat3& other);
	mat3 operator!(void);
	mat3 operator*(const mat3& other);
	mat3 operator/(const mat3& other);

	mat3(double a1, double a2, double a3, double b1, double b2, double b3, double c1, double c2, double c3);
	mat3();
	mat3 multi(mat3 mult);
	mat3 divide(mat3 divide);
	mat3 add(mat3 add);
	mat3 subtract(mat3 sub);
	mat3 transpose(void);
	mat3 inverse(void);
	int setElements(mat3 setElem);
	void print(void);

	double getA1(void);
	double getA2(void);
	double getA3(void);

	double getB1(void);
	double getB2(void);
	double getB3(void);

	double getC1(void);
	double getC2(void);
	double getC3(void);

	double a1, a2, a3, b1, b2, b3, c1, c2, c3;
};

mat3::mat3(double a1, double a2, double a3, double b1, double b2, double b3, double c1, double c2, double c3)
{
	this->a1 = a1; this->a2 = a2; this->a3 = a3;
	this->b1 = b1; this->b2 = b2; this->b3 = b3;
	this->c1 = c1; this->c2 = c2; this->c3 = c3;
}
mat3::mat3()
{
	this->a1 = 0; this->a2 = 0; this->a3 = 0;
	this->b1 = 0; this->b2 = 0; this->b3 = 0;
	this->c1 = 0; this->c2 = 0; this->c3 = 0;
}

bool mat3::operator =(const mat3& other)
{
	this->setElements(other);
	return true;
}
mat3 mat3::operator+(const mat3& other)
{
	return this->add(other);
}

mat3 mat3::operator-(const mat3& other)
{
	return this->subtract(other);
}

mat3 mat3::operator!(void)
{
	return this->transpose();
}

mat3 mat3::operator*(const mat3& other)
{
	return this->multi(other);
}


mat3 mat3::operator/(const mat3& other)
{
	return this->divide(other);
}

#ifdef desktop
void mat3::print(void)
{
	cout<< a1 <<" " << a2 << " " << a3 << std::endl;
	cout<< b1 <<" " << b2 << " " << b3 << std::endl;
	cout<< c1 <<" " << c2 << " " << c3 << std::endl;
}
#endif

#ifdef zybo
#include "xparameters.h"
void mat3::print(void)
		{
			char buffer[30];
			sprintf(buffer,"%f, %f, %f\n", a1, a2, a3);
			xil_printf("%s",buffer);

			sprintf(buffer,"%f, %f, %f\n", b1, b2, b3);
			xil_printf("%s",buffer);

			sprintf(buffer,"%f, %f, %f\n", c1, c2, c3);
			xil_printf("%s",buffer);
		}
#endif

mat3 mat3::multi(mat3 mult)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	mat3 tempMulti;

	/*****************
	 *510   546   582*
     *636   681   726*
     *762   816   870*
	*****************/
	tempMulti.a1 = other.a1*mult.a1 + other.a2*mult.b1 + other.a3*mult.c1;

	tempMulti.a2 = other.a1*mult.a2 + other.a2*mult.b2 + other.a3*mult.c2;

	tempMulti.a3 = other.a1 * mult.a3 + other.a2*mult.b3 + other.a3* mult.c3;

	tempMulti.b1 = other.b1*mult.a1 + other.b2*mult.b1 + other.b3*mult.c1;

	tempMulti.b2 = other.b1*mult.a2 + other.b2*mult.b2 + other.b3*mult.c2;

	tempMulti.b3 = other.b1*mult.a3 + other.b2*mult.b3 + other.b3*mult.c3;


	tempMulti.c1 = other.c1*mult.a1 + other.c2*mult.b1 + other.c3*mult.c1;

	tempMulti.c2 = other.c1*mult.a2 + other.c2*mult.b2 + other.c3*mult.c2;

	tempMulti.c3 = other.c1*mult.a3 + other.c2*mult.b3 + other.c3*mult.c3;


#ifdef debug
	this->print();
#endif
	//this->a2 = this.a1

	return tempMulti;
}

//TODO ADD MATRIX DIVISION
mat3 mat3::divide(mat3 divide)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	return other*divide.inverse();
}

mat3 mat3::add(mat3 add)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	mat3 tempAdd;
	tempAdd.a1 = other.a1+add.a1; tempAdd.a2 = other.a2+add.a2; tempAdd.a3 = other.a3+add.a3;
	tempAdd.b1 = other.b1+add.b1; tempAdd.b2 = other.b2+add.b2; tempAdd.b3 = other.b3+add.b3;
	tempAdd.c1 = other.c1+add.c1; tempAdd.c2 = other.c2+add.c2; tempAdd.c3 = other.c3+add.c3;
	return tempAdd;
}

mat3 mat3::subtract(mat3 sub)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	mat3 tempSub;
	tempSub.a1 = other.a1-sub.a1; tempSub.a2 = other.a2-sub.a2; tempSub.a3 = other.a3-sub.a3;
	tempSub.b1 = other.b1-sub.b1; tempSub.b2 = other.b2-sub.b2; tempSub.b3 = other.b3-sub.b3;
	tempSub.c1 = other.c1-sub.c1; tempSub.c2 = other.c2-sub.c2; tempSub.c3 = other.c3-sub.c3;
	return tempSub;
}

mat3 mat3::transpose(void)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	mat3 tempTrans;
	tempTrans.a1 = other.a1; tempTrans.b1 = other.a2; tempTrans.c1 = other.a3;
	tempTrans.a2 = other.b1; tempTrans.b2 = other.b2; tempTrans.c2 = other.b3;
	tempTrans.a3 = other.c1; tempTrans.b3 = other.c2; tempTrans.c3 = other.c3;

	return tempTrans;
}

mat3 mat3::inverse(void)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	mat3 tempDiv;

	//matrix of determinants
	double dA1 = (other.b2*other.c3)-(other.b3*other.c2);
	double dA2 = (other.b1*other.c3)-(other.b3*other.c1);
	double dA3 = (other.b1*other.c2)-(other.b2*other.c1);

	double dB1 = (other.a2*other.c3)-(other.a3*other.c2);
	double dB2 = (other.a1*other.c3)-(other.a3*other.c1);
	double dB3 = (other.a1*other.c2)-(other.a2*other.c1);

	double dC1 = (other.a2*other.b3)-(other.a3*other.b2);
	double dC2 = (other.a1*other.b3)-(other.a3*other.b1);
	double dC3 = (other.a1*other.b2)-(other.a2*other.b1);

	//matrix of minors
	dA2=dA2*-1;
	dB1=dB1*-1;
	dB3=dB3*-1;
	dC2=dC2*-1;

	//abjugate matrix
	mat3 abjMat(dA1, dB1, dC1, dA2, dB2, dC2, dA3, dB3, dC3);

	//main determinant
	double originalDeterminant = ((other.b2*other.c3-other.b3*other.c2)*other.a1) - ((other.b1*other.c3 - other.c1*other.b3)*other.a2) + ((other.b1*other.c2 - other.b2*other.c1)*other.a3);

	double invDet = 1/originalDeterminant;
	mat3 invMat(abjMat.a1*invDet, abjMat.a2*invDet,abjMat.a3*invDet,
			abjMat.b1*invDet,abjMat.b2*invDet,abjMat.b3*invDet
			,abjMat.c1*invDet,abjMat.c2*invDet,abjMat.c3*invDet);

	return invMat;
}

int mat3::setElements(mat3 setElem)
{
	this->a1 = setElem.a1;
	this->a2 = setElem.a2;
	this->a3 = setElem.a3;

	this->b1 = setElem.b1;
	this->b2 = setElem.b2;
	this->b3 = setElem.b3;

	this->c1 = setElem.c1;
	this->c2 = setElem.c2;
	this->c3 = setElem.c3;

	return 1;
}

double mat3::getA1(void)
{
	return a1;
}
double mat3::getA2(void)
{
	return a2;
}
double mat3::getA3(void)
{
	return a3;
}

double mat3::getB1(void)
{
	return b1;
}
double mat3::getB2(void)
{
	return b2;
}
double mat3::getB3(void)
{
	return b3;
}

double mat3::getC1(void)
{
	return c1;
}
double mat3::getC2(void)
{
	return c2;
}
double mat3::getC3(void)
{
	return c3;
}

#endif
