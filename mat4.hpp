/*http://www.calcul.com/show/calculator/matrix-multiplication_;3;1;1;3?matrix1=[[%221%22,%222%22,%223%22,%224%22],[%225%22,%226%22,%227%22,%228%22],[%229%22,%2210%22,%2211%22,%2212%22],[%2213%22,%2214%22,%2215%22,%2216%22]]&matrix2=[[%221%22,%222%22,%223%22,%224%22],[%225%22,%226%22,%227%22,%228%22],[%229%22,%2210%22,%2211%22,%2212%22],[%2213%22,%2214%22,%2215%22,%2216%22]]&operator=**/
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


	float a1, a2, a3, a4, b1, b2, b3, b4, c1, c2, c3, c4, d1, d2 ,d3 ,d4;
};

#endif

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

mat4 mat4::multi(mat4 mult)
{
	mat4 other(this->a1,this->a2,  this->a3,this->a4,this->b1,this->b2,this->b3,this->b4,
			   this->c1,this->c1=2,this->c3,this->c4,this->d1,this->d2,this->d3,this->d4);
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

void mat4::print(void)
{
	cout<< a1 <<" " << a2 << " " << a3 << " " <<a4 << std::endl;
	cout<< b1 <<" " << b2 << " " << b3 << " " <<b4 << std::endl;
	cout<< c1 <<" " << c2 << " " << c3 << " " <<c4 << std::endl;
	cout<< d1 <<" " << d2 << " " << d3 << " " <<d4 << std::endl;
}
