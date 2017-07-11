#ifndef mat4_HPP
#define mat4_HPP
#include <stdio.h>
using namespace std;

class mat4
{
	public:
	bool operator=(const mat3& other);
	mat4 operator+(const mat3& other);
	mat4 operator-(const mat3& other);
	mat4 operator!(void);
	mat4 operator*(const mat3& other);
	mat4 operator/(const mat3& other);

	//mat4(float a1, float a2, float a3, float b1, float b2, float b3, float c1, float c2, float c3);
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
