#include <stdio.h>

using namespace std;

class mat3
{
	public:
	int operator=(const mat3& other);
	int operator+(const mat3& other);
	int operator-(const mat3& other);
	int operator!(void);

	mat3(float a1, float a2, float a3, float b1, float b2, float b3, float c1, float c2, float c3);
	int multi(mat3 mult);
	int add(mat3 add);
	int subtract(mat3 sub);
	int transpose(void);
	void print(void);


	private:
	float a1, a2, a3, b1, b2, b3, c1, c2, c3;
};

mat3::mat3(float a1, float a2, float a3, float b1, float b2, float b3, float c1, float c2, float c3)
{
	this->a1 = a1; this->a2 = a2; this->a3 = a3;
	this->b1 = b1; this->b2 = b2; this->b3 = b3;
	this->c1 = c1; this->c2 = c2; this->c3 = c3;
}

int mat3::operator =(const mat3& other)
{
	this->a1 = other.a1;
	this->a2 = other.a2;
	this->a3 = other.a3;

	this->b1 = other.b1;
	this->b2 = other.b2;
	this->b3 = other.b3;

	this->c1 = other.c1;
	this->c2 = other.c2;
	this->c3 = other.c3;
	return 1;
}
int mat3::operator+(const mat3& other)
{
	this->add(other);
	return 1;
}

int mat3::operator-(const mat3& other)
{
	this->subtract(other);
	return 1;
}

int mat3::operator!(void)
{
	this->transpose();
	return 1;
}

#ifdef desktop
void mat3::print(void)
{
	cout<< a1 <<" " << a2 << " " << a3 << std::endl;
	cout<< b1 <<" " << b2 << " " << b3 << std::endl;
	cout<< c1 <<" " << c2 << " " << c3 << std::endl;
}
#endif

int mat3::multi(mat3 mult)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);

	/*****************
	 *510   546   582*
     *636   681   726*
     *762   816   870*
	*****************/
	this->a1 = other.a1*mult.a1 + other.a2*mult.b1 + other.a3*mult.c1;

	this->a2 = other.a1*mult.a2 + other.a2*mult.b2 + other.a3*mult.c2;

	this->a3 = other.a1 * mult.a3 + other.a2*mult.b3 + other.a3* mult.c3;

	this->b1 = other.b1*mult.a1 + other.b2*mult.b1 + other.b3*mult.c1;

	this->b2 = other.b1*mult.a2 + other.b2*mult.b2 + other.b3*mult.c2;

	this->b3 = other.b1*mult.a3 + other.b2*mult.b3 + other.b3*mult.c3;


	this->c1 = other.c1*mult.a1 + other.c2*mult.b1 + other.c3*mult.c1;

	this->c2 = other.c1*mult.a2 + other.c2*mult.b2 + other.c3*mult.c2;

	this->c3 = other.c1*mult.a3 + other.c2*mult.b3 + other.c3*mult.c3;


#ifdef debug
	this->print();
#endif
	//this->a2 = this.a1

	return 1;
}

int mat3::add(mat3 add)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	this->a1 = other.a1+add.a1; this->a2 = other.a2+add.a2; this->a3 = other.a3+add.a3;
	this->b1 = other.b1+add.b1; this->b2 = other.b2+add.b2; this->b3 = other.b3+add.b3;
	this->c1 = other.c1+add.c1; this->c2 = other.c2+add.c2; this->c3 = other.c3+add.c3;
	return 1;
}

int mat3::subtract(mat3 sub)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	this->a1 = other.a1-sub.a1; this->a2 = other.a2-sub.a2; this->a3 = other.a3-sub.a3;
	this->b1 = other.b1-sub.b1; this->b2 = other.b2-sub.b2; this->b3 = other.b3-sub.b3;
	this->c1 = other.c1-sub.c1; this->c2 = other.c2-sub.c2; this->c3 = other.c3-sub.c3;
	return 1;
}

int mat3::transpose(void)
{
	mat3 other(this->a1,this->a2,this->a3,this->b1,this->b2,this->b3,this->c1,this->c2,this->c3);
	this->a1 = other.a1; this->b1 = other.a2; this->c1 = other.a3;
	this->a2 = other.b1; this->b2 = other.b2; this->c2 = other.b3;
	this->a3 = other.c1; this->b3 = other.c2; this->c3 = other.c3;

	return 1;
}


