#include <stdio.h>
#include "mat3.hpp"
#include "mat2.hpp"
#include "math.h"

using namespace std;

class KF2D
{
public:
	int predict();
	int update();
private:

	mat3 P;
	mat3 A;
	mat3 Q;

};


int KF2D::predict()
{

	return 1;
}

int KF2D::update()
{
	return 1;
}
