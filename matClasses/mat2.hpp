#include <stdio.h>

using namespace std;

class mat2
{
	public:
	int operator=(const mat2& other);
	int operator+(const mat2& other);
	int operator-(const mat2& other);
	int operator!(void);
	int operator*(const mat2& other);
	int operator/(const mat2& other);


	mat2(float a1, float a2, float b1, float b2);
	mat2();
	int multi(mat2 mult);
	int divide(mat2 divide);
	int add(mat2 add);
	int subtract(mat2 sub);
	int transpose(void);
	mat2 inverse(void);
	int setElements(mat2 setElem);
	void print(void);


	private:
	float a1, a2, b1, b2;
};


mat2::mat2(float a1, float a2, float b1, float b2)
{
	this->a1 = a1; this->a2 = a2;
	this->b1 = b1; this->b2 = b2;
}
mat2::mat2()
{
	this->a1 = 0; this->a2 = 0;
	this->b1 = 0; this->b2 = 0;
}

int mat2::operator =(const mat2& other)
{
	this->setElements(other);

	return 1;
}

int mat2::operator+(const mat2& other)
{
	this->add(other);
	return 1;
}

int mat2::operator-(const mat2& other)
{
	this->subtract(other);
	return 1;
}
int mat2::operator!(void)
{
	this->transpose();
	return 1;
}

int mat2::operator*(const mat2& other)
{
	this->multi(other);
	return 1;
}

//int mat2::operator/(const mat2& other)
//{
//	this->divide(other);
//	return 1;
//}

int mat2::multi(mat2 mult)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);
	this->a1 = other.a1*mult.a1 + other.a2*mult.b1;
	this->a2 = other.a1*mult.a2 + other.a2*mult.b2;

	this->b1 = other.b1*mult.a1 + other.b2*mult.b1;
	this->b2 = other.b1*mult.a2 + other.b2*mult.b2;

	return 1;
}

//TODO create inverse function then finish
/*int mat2::divide(mat2 divide)
{
	//find inverse of matrix divide
	mat2 temp = divide;
	divide.a1= divide.b2*(1/(divide.a1*divide.b2-(divide.a2*divide.b1));


	return 1;
}*/

int mat2::add(mat2 add)
{
	mat2 other(this->a1,this->a2,this->b1,this->b2);
	this->a1 = other.a1+add.a1; this->a2 = other.a2+add.a2;
	this->b1 = other.b1+add.b1; this->b2 = other.b2+add.b2;
	return 1;
}
int mat2::subtract(mat2 sub)
{
	mat2 other(this->a1,this->a2,this->b1,this->b2);
	this->a1 = other.a1-sub.a1; this->a2 = other.a2-sub.a2;
	this->b1 = other.b1-sub.b1; this->b2 = other.b2-sub.b2;
	return 1;
}

#ifdef desktop
void mat2::print(void)
{
	cout<< a1 << " " << a2 << endl;
	cout<< b1 << " " << b2 << endl;
}
#endif

int mat2::transpose(void)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);

	this->a1 = other.a1; this->a2 = other.b1;
	this->b1 = other.a2; this->b2 = other.b2;

	return 1;
}

mat2 mat2::inverse(void)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);
	mat2 inv;
	float scalar = (1/(other.a1*other.b2-other.a2*other.b1));
	inv.a1 = other.b2*scalar;
	return inv;
}

int mat2::setElements(mat2 setElem)
{
	this->a1 = setElem.a1; this->a2 = setElem.a2;
	this->b1 = setElem.b1; this->b2 = setElem.b2;
	return 1;
}
