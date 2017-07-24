#ifndef mat4_HPP
#define mat4_HPP
#include <stdio.h>
using namespace std;

class mat4
{
	public:
	bool operator=(const mat4& other);
	mat4 operator+(const mat4& other);
	mat4 operator-(const mat4& other);
	mat4 operator!(void);
	mat4 operator*(const mat4& other);
	mat4 operator/(const mat4& other);

	mat4(float a1, float a2, float a3, float a4, float b1, float b2, float b3, float b4,
			 float c1, float c2, float c3, float c4, float d1, float d2, float d3, float d4);
	mat4();
	mat4 multi(mat4 mult);
	mat4 divide(mat4 divide);
	mat4 add(mat4 add);
	mat4 subtract(mat4 sub);
	mat4 transpose(void);
	mat4 inverse(void);
	int setElements(mat4 setElem);
	void print(void);

	float getA1(void);
	float getA2(void);
	float getA3(void);
	float getA4(void);

	float getB1(void);
	float getB2(void);
	float getB3(void);
	float getB4(void);

	float getC1(void);
	float getC2(void);
	float getC3(void);
	float getC4(void);

	float getD1(void);
	float getD2(void);
	float getD3(void);
	float getD4(void);

	float a1, a2, a3, a4, b1, b2, b3, b4, c1, c2, c3, c4, d1, d2 ,d3 ,d4;
};



mat4::mat4()
{
	a1 = 0; a2=0; a3=0; a4=0;
	b1 = 0; b2 =0; b3=0; b4 = 0;
	c1=0;c2=0;c3=0;c4=0;
	d1=0;d2=0;d3=0;d4=0;
}

mat4::mat4(float a1, float a2, float a3, float a4, float b1, float b2, float b3, float b4,
	   float c1, float c2, float c3, float c4, float d1, float d2, float d3, float d4)
{
	this->a1=a1;this->a2=a2; this->a3=a3;this->a4=a4;
	this->b1=b1;this->b2=b2; this->b3=b3;this->b4=b4;
	this->c1=c1;this->c2=c2; this->c3=c3;this->c4=c4;
	this->d1=d1;this->d2=d2; this->d3=d3;this->d4=d4;
}

bool mat4::operator=(const mat4& other)
{
	this->setElements(other);
	return true;
}

mat4 mat4::operator*(const mat4& other)
{
	return this->multi(other);
}

mat4 mat4::operator+(const mat4& other)
{
	return this->add(other);
}

mat4 mat4::operator-(const mat4& other)
{
	return this->subtract(other);
}

mat4 mat4::operator!(void)
{
	return this->transpose();
}

/*division is wrong*/
mat4 mat4::operator/(const mat4& other)
{
	return this->divide(other);
}

mat4 mat4::divide(mat4 divide)
{
	mat4 tempDiv = divide.inverse();
	return this->multi(tempDiv);
}

mat4 mat4::multi(mat4 mult)
{
	mat4 other(this->a1,this->a2,  this->a3,this->a4,this->b1,this->b2,this->b3,this->b4,
		   this->c1,this->c2,this->c3,this->c4,this->d1,this->d2,this->d3,this->d4);
	mat4 tempMult;

	tempMult.a1 = other.a1*mult.a1 + other.a2*mult.b1 + other.a3*mult.c1 + other.a4*mult.d1;
	tempMult.a2 = other.a1*mult.a2 + other.a2*mult.b2 + other.a3*mult.c2 + other.a4*mult.d2;
	tempMult.a3 = other.a1*mult.a3 + other.a2*mult.b3 + other.a3*mult.c3 + other.a4*mult.d3;
	tempMult.a4 = other.a1*mult.a4 + other.a2*mult.b4 + other.a3*mult.c4 + other.a4*mult.d4;

	tempMult.b1 = other.b1*mult.a1 + other.b2*mult.b1 + other.b3*mult.c1 + other.b4*mult.d1;
	tempMult.b2 = other.b1*mult.a2 + other.b2*mult.b2 + other.b3*mult.c2 + other.b4*mult.d2;
	tempMult.b3 = other.b1*mult.a3 + other.b2*mult.b3 + other.b3*mult.c3 + other.b4*mult.d3;
	tempMult.b4 = other.b1*mult.a4 + other.b2*mult.b4 + other.b3*mult.c4 + other.b4*mult.d4;

	tempMult.c1 = other.c1*mult.a1 + other.c2*mult.b1 + other.c3*mult.c1 + other.c4*mult.d1;
	tempMult.c2 = other.c1*mult.a2 + other.c2*mult.b2 + other.c3*mult.c2 + other.c4*mult.d2;
	tempMult.c3 = other.c1*mult.a3 + other.c2*mult.b3 + other.c3*mult.c3 + other.c4*mult.d3;
	tempMult.c4 = other.c1*mult.a4 + other.c2*mult.b4 + other.c3*mult.c4 + other.c4*mult.d4;

	tempMult.d1 = other.d1*mult.a1 + other.d2*mult.b1 + other.d3*mult.c1 + other.d4*mult.d1;
	tempMult.d2 = other.d1*mult.a2 + other.d2*mult.b2 + other.d3*mult.c2 + other.d4*mult.d2;
	tempMult.d3 = other.d1*mult.a3 + other.d2*mult.b3 + other.d3*mult.c3 + other.d4*mult.d3;
	tempMult.d4 = other.d1*mult.a4 + other.d2*mult.b4 + other.d3*mult.c4 + other.d4*mult.d4;
	return tempMult;
}

mat4 mat4::add(mat4 add)
{
	mat4 other(this->a1,this->a2,  this->a3,this->a4,this->b1,this->b2,this->b3,this->b4,
		   this->c1,this->c2,this->c3,this->c4,this->d1,this->d2,this->d3,this->d4);
	mat4 tempAdd;
	tempAdd.a1=other.a1+add.a1;
	tempAdd.a2=other.a2+add.a2;
	tempAdd.a3=other.a3+add.a3;
	tempAdd.a4=other.a4+add.a4;

	tempAdd.b1=other.b1+add.b1;
	tempAdd.b2=other.b2+add.b2;
	tempAdd.b3=other.b3+add.b3;
	tempAdd.b4=other.b4+add.b4;

	tempAdd.c1=other.c1+add.c1;
	tempAdd.c2=other.c2+add.c2;
	tempAdd.c3=other.c3+add.c3;
	tempAdd.c4=other.c4+add.c4;

	tempAdd.d1=other.d1+add.d1;
	tempAdd.d2=other.d2+add.d2;
	tempAdd.d3=other.d3+add.d3;
	tempAdd.d4=other.d4+add.d4;

	return tempAdd;
}

mat4 mat4::subtract(mat4 sub)
{
    mat4 other(this->a1,this->a2,  this->a3,this->a4,this->b1,this->b2,this->b3,this->b4,
	       this->c1,this->c2,this->c3,this->c4,this->d1,this->d2,this->d3,this->d4);
    mat4 tempSub;
    tempSub.a1=other.a1-sub.a1;
    tempSub.a2=other.a2-sub.a2;
    tempSub.a3=other.a3-sub.a3;
    tempSub.a4=other.a4-sub.a4;

    tempSub.b1=other.b1-sub.b1;
    tempSub.b2=other.b2-sub.b2;
    tempSub.b3=other.b3-sub.b3;
    tempSub.b4=other.b4-sub.b4;

    tempSub.c1=other.c1-sub.c1;
    tempSub.c2=other.c2-sub.c2;
    tempSub.c3=other.c3-sub.c3;
    tempSub.c4=other.c4-sub.c4;

    tempSub.d1=other.d1-sub.d1;
    tempSub.d2=other.d2-sub.d2;
    tempSub.d3=other.d3-sub.d3;
    tempSub.d4=other.d4-sub.d4;

    return tempSub;
}

int mat4::setElements(mat4 setElem)
{
	this->a1 = setElem.a1;
	this->a2 = setElem.a2;
	this->a3 = setElem.a3;
	this->a4 = setElem.a4;

	this->b1 = setElem.b1;
	this->b2 = setElem.b2;
	this->b3 = setElem.b3;
	this->b4 = setElem.b4;

	this->c1 = setElem.c1;
	this->c2 = setElem.c2;
	this->c3 = setElem.c3;
	this->c4 = setElem.c4;

	this->d1 = setElem.d1;
	this->d2 = setElem.d2;
	this->d3 = setElem.d3;
	this->d4 = setElem.d4;
	return 1;
}

mat4 mat4::transpose(void)
{
	mat4 tempTransMatrix(this->a1,this->b1,this->c1,this->d1,
				    this->a2,this->b2,this->c2,this->d2,
					this->a3,this->b3,this->c3,this->d3,
					this->a4,this->b4,this->c4,this->d4);
	return tempTransMatrix;
}

mat4 mat4::inverse(void)
{
	//http://www.cg.info.hiroshima-cu.ac.jp/~miyazaki/knowledge/teche23.html
	mat4 inverseMat;
	float detAdd     = ( a1*b2*c3*d4 + a1*b3*c4*d2 + a1*b4*c2*d3
			           + a2*b1*c4*d3 + a2*b3*c1*d4 + a2*b4*c3*d1
			           + a3*b1*c2*d4 + a3*b2*c4*d1 + a3*b4*c1*d2
			           + a4*b1*c3*d2 + a4*b2*c1*d3 + a4*b3*c2*d1);


	float detSub     = ( a1*b2*c4*d3 + a1*b3*c2*d4 + a1*b4*c3*d2
                       + a2*b1*c3*d4 + a2*b3*c4*d1 + a2*b4*c1*d3
                       + a3*b1*c4*d2 + a3*b2*c1*d4 + a3*b4*c2*d1
                       + a4*b1*c2*d3 + a4*b2*c3*d1 + a4*b3*c1*d2);

	float determinant = detAdd-detSub;

	inverseMat.a1 = (b2*c3*d4 + b3*c4*d2 + b4*c2*d3 - b2*c4*d3 - b3*c2*d4 - b4*c3*d2);
    inverseMat.a2 = (a2*c4*d3 + a3*c2*d4 + a4*c3*d2 - a2*c3*d4 - a3*c4*d2 - a4*c2*d3);
    inverseMat.a3 = (a2*b3*d4 + a3*b4*d2 + a4*b2*d3 - a2*b4*d3 - a3*b2*d4 - a4*b3*d2);
	inverseMat.a4 = (a2*b4*c3 + a3*b2*c3 + a4*b3*c2 - a2*b3*c4 - a3*b4*c2 - a4*b2*c3);

	inverseMat.b1 = (b1*c4*d3 + b3*c1*d4 + b4*c3*d1 - b1*c3*d4 - b3*c4*d1 - b4*c1*d3);
	inverseMat.b2 = (a1*c3*d4 + a3*c4*d1 + a4*c1*d3 - a1*c4*d3 - a3*c1*d4 - a4*c3*d1);
	inverseMat.b3 = (a1*b4*d3 + a3*b1*d4 + a4*b3*d1 - a1*b3*d4 - a3*b4*d1 - a4*c3*d1);
	inverseMat.b4 = (a1*b3*c4 + a3*b4*c1 + a4*b1*c3 - a1*b4*c3 - a3*b4*d1 - a4*b3*c1);

	inverseMat.c1 = (b1*c2*d4 + b2*c4*d1 + b4*c4*d1 - b1*c4*d2 - b2*c1*d4 - b4*c2*d1);
	inverseMat.c2 = (a1*c4*d2 + a2*c1*d4 + a4*c2*d1 - a1*c2*d1 - a2*c4*d1 - a4*c1*d2);
	inverseMat.c3 = (a1*b2*d4 + a2*b4*d1 + a4*b1*d2 - a1*b4*d2 - a2*b1*d4 - a4*c1*d2);
	inverseMat.c4 = (a1*b4*c2 + a2*b4*d1 + a4*b2*d2 - a1*b2*c4 - a2*b4*c1 - a4*b1*c2);

	inverseMat.d1 = (b1*c3*d2 + b2*c1*d3 + b3*c2*d1 - b1*c2*d3 - b2*c3*d1 - b3*c1*d2);
	inverseMat.d2 = (a1*c2*d3 + a2*c3*d1 + a3*c1*d2 - a1*c3*d2 - a2*c1*d3 - a3*c2*d1);
	inverseMat.d3 = (a1*b3*d2 + a2*b1*d3 + a3*b2*d1 - a1*b2*d3 - a2*b3*d1 - a3*b1*d2);
	inverseMat.d4 = (a1*b2*c3 + a2*b3*c1 + a3*b1*c2 - a1*b3*c2 - a2*b1*c3 - a3*b2*c1);



	inverseMat.a1 = inverseMat.a1*determinant;
	inverseMat.a2 = inverseMat.a2*determinant;
	inverseMat.a3 = inverseMat.a3*determinant;
	inverseMat.a4 = inverseMat.a4*determinant;

	inverseMat.b1 = inverseMat.b1*determinant;
	inverseMat.b2 = inverseMat.b2*determinant;
	inverseMat.b3 = inverseMat.b3*determinant;
	inverseMat.b4 = inverseMat.b4*determinant;

	inverseMat.c1 = inverseMat.c1*determinant;
	inverseMat.c2 = inverseMat.c2*determinant;
	inverseMat.c3 = inverseMat.c3*determinant;
	inverseMat.c4 = inverseMat.c4*determinant;

	inverseMat.d1 = inverseMat.d1*determinant;
	inverseMat.d2 = inverseMat.d2*determinant;
	inverseMat.d3 = inverseMat.d3*determinant;
	inverseMat.d4 = inverseMat.d4*determinant;
	return inverseMat;
}

float mat4::getA1(void)
{
	return a1;
}
float mat4::getA2(void)
{
	return a2;
}
float mat4::getA3(void)
{
	return a3;
}
float mat4::getA4(void)
{
	return a4;
}

float mat4::getB1(void)
{
	return b1;
}
float mat4::getB2(void)
{
	return b2;
}
float mat4::getB3(void)
{
	return b3;
}
float mat4::getB4(void)
{
	return b4;
}

float mat4::getC1(void)
{
	return c1;
}
float mat4::getC2(void)
{
	return c2;
}
float mat4::getC3(void)
{
	return c3;
}
float mat4::getC4(void)
{
	return c4;
}

float mat4::getD1(void)
{
	return d1;
}
float mat4::getD2(void)
{
	return d2;
}
float mat4::getD3(void)
{
	return d3;
}
float mat4::getD4(void)
{
	return d4;
}

#ifdef desktop
void mat4::print(void)
{
	cout<< a1 <<" " << a2 << " " << a3 << " " <<a4 << std::endl;
	cout<< b1 <<" " << b2 << " " << b3 << " " <<b4 << std::endl;
	cout<< c1 <<" " << c2 << " " << c3 << " " <<c4 << std::endl;
	cout<< d1 <<" " << d2 << " " << d3 << " " <<d4 << std::endl;
}
#endif

#ifdef zybo
#include "xparameters.h"
void mat4::print(void)
		{
		char buffer[30];
		sprintf(buffer,"%f, %f, %f, %f\n", a1, a2, a3, a4);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f\n", b1, b2, b3, b4);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f\n", c1, c2, c3, c4);
		xil_printf("%s",buffer);

		sprintf(buffer,"%f, %f, %f, %f\n", d1, d2, d3, d4);
		xil_printf("%s",buffer);
		}

#endif

#endif
