#include <stdio.h>

using namespace std;

class mat2
{
	public:
	bool operator=(const mat2& other);
	mat2 operator+(const mat2& other);
	mat2 operator-(const mat2& other);
	mat2 operator!(void);
	mat2 operator*(const mat2& other);
	mat2 operator/(const mat2& other);


	mat2(float a1, float a2, float b1, float b2);
	mat2();
	mat2 multi(mat2 mult);
	mat2 divide(mat2 divide);
	mat2 add(mat2 add);
	mat2 subtract(mat2 sub);
	mat2 transpose(void);
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

bool mat2::operator =(const mat2& other)
{
	this->setElements(other);

	return true;
}

mat2 mat2::operator+(const mat2& other)
{
	return this->add(other);
}

mat2 mat2::operator-(const mat2& other)
{
	return this->subtract(other);
}
mat2 mat2::operator!(void)
{
	return this->transpose();
}

mat2 mat2::operator*(const mat2& other)
{
	return this->multi(other);

}

mat2 mat2::operator/(const mat2& other)
{
	return this->divide(other);
}

mat2 mat2::multi(mat2 mult)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);
	mat2 tempMult;
	tempMult.a1 = other.a1*mult.a1 + other.a2*mult.b1;
	tempMult.a2 = other.a1*mult.a2 + other.a2*mult.b2;

	tempMult.b1 = other.b1*mult.a1 + other.b2*mult.b1;
	tempMult.b2 = other.b1*mult.a2 + other.b2*mult.b2;

	return tempMult;
}

mat2 mat2::divide(mat2 divide)
{
	//find inverse of matrix divide
	mat2 other(this->a1,this->a2,this->b1,this->b2);
	return other*divide.inverse();
}

mat2 mat2::add(mat2 add)
{
	mat2 other(this->a1,this->a2,this->b1,this->b2);
	mat2 tempAdd;
	tempAdd.a1 = other.a1+add.a1; tempAdd.a2 = other.a2+add.a2;
	tempAdd.b1 = other.b1+add.b1; tempAdd.b2 = other.b2+add.b2;
	return tempAdd;
}
mat2 mat2::subtract(mat2 sub)
{
	mat2 other(this->a1,this->a2,this->b1,this->b2);
	mat2 tempSub;
	tempSub.a1 = other.a1-sub.a1; tempSub.a2 = other.a2-sub.a2;
	tempSub.b1 = other.b1-sub.b1; tempSub.b2 = other.b2-sub.b2;
	return tempSub;
}

#ifdef desktop
void mat2::print(void)
{
	cout<< a1 << " " << a2 << endl;
	cout<< b1 << " " << b2 << endl;
}
#endif

mat2 mat2::transpose(void)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);
	mat2 tempInv;

	tempInv.a1 = other.a1; tempInv.a2 = other.b1;
	tempInv.b1 = other.a2; tempInv.b2 = other.b2;

	return tempInv;
}

mat2 mat2::inverse(void)
{
	mat2 other(this->a1,this->a2, this->b1,this->b2);
	mat2 inv;
	float scalar = (1/(other.a1*other.b2-other.a2*other.b1));
	inv.a1 = other.b2*scalar;
	inv.a2 = (-1)*other.a2*scalar;
	inv.b1 = (-1)*other.b1*scalar;
	inv.b2 = other.a1*scalar;
	return inv;
}

int mat2::setElements(mat2 setElem)
{
	this->a1 = setElem.a1; this->a2 = setElem.a2;
	this->b1 = setElem.b1; this->b2 = setElem.b2;
	return 1;
}
