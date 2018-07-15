#include "KalmanFilter2D.hpp"

mat3 p(3,0,2,2,0,-2,0,1,1), a(2.66,0,22,2,30,-2,0,1,1), q(22,11,10,15,5,3,2,6,7);
	float m0 = 1, m1 = 2, m2 = 3;
	KF2D kalmamFilter(p, a, q, m0, m1, m2);


KF2D test(float measurement){
	kalmamFilter.takeMeasurement(measurement);
	kalmamFilter.predict();
	kalmamFilter.update();
	return kalmamFilter;
}

/*int main (void){

	float a = 4.125, b = 7.421;
	float i = a*b;

	if (multiTest(a,b)!= i){
		return 0;
	}
	else
		return 1;
}
*/
