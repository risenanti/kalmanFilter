#include <stdio.h>
#include "mat2.hpp"
#include "mat3.hpp"
#include "mat4.hpp"
#include "mat5.hpp"
#include <math.h>

#ifndef KalmanFilterReEntry_HPP
#define KalmanFilterReEntry_HPP

class KFRENTER
{
public:
	double M[5]; //5x1 array
	mat5 P;
	mat5 Q;
	mat5 A;
	mat2 S;
	mat2 R;
	double Param[7]; //7x1 array
	double dot_x[5]; //5x1 array

	double MU[2];
	double Y[2];

	double H0[5];
	double H1[5];

	double K[5][2];


	KFRENTER(void);
	KFRENTER(mat5 p, mat5 q, mat2 s, mat2 r, double *m, double *param);

	int task1(void);
	int task2(void);
	int task3(void);
	int task4(void);
	int task5(void);
	int task6(void);
	int task7(void);
	int task8(void);

};

KFRENTER::KFRENTER(void)
{
	M[0] = (double)0.0; M[1] = (double)0.0; M[2] = (double)0.0;
	M[3] = (double)0.0; M[4] = (double)0.0;
	Param[0] = (double) 0.0; Param[1] = (double) 0.0; Param[2] = (double) 0.0;
	Param[3] = (double) 0.0; Param[4] = (double) 0.0; Param[5] = (double) 0.0;
	Param[6] = (double) 0.0;

	mat5 initMat5( (double)0.0, (double)0.0, (double)0.0, (double)0.0, (double)0.0,
			       (double)0.0, (double)0.0, (double)0.0, (double)0.0, (double)0.0,
				   (double)0.0, (double)0.0, (double)0.0, (double)0.0, (double)0.0,
				   (double)0.0, (double)0.0, (double)0.0, (double)0.0, (double)0.0,
				   (double)0.0, (double)0.0, (double)0.0, (double)0.0, (double)0.0);
	P = initMat5;
	Q = initMat5;
	mat2 initMat2((double)0.0, (double)0.0, (double)0.0, (double)0.0);
	S = initMat2;
	R = initMat2;
}

KFRENTER::KFRENTER(mat5 p, mat5 q, mat2 s, mat2 r, double *m, double *param)
{
	P = p;
	Q = q;
	S = s;
	R = r;
	M[0]= *m; M[1]= *(m+1); M[2]= *(m+2); M[3]= *(m+3); M[4]= *(m+4);
	Param[0] = *param; Param[1] = *(param+1); Param[2] = *(param+2);
	Param[3] = *(param+3); Param[4] = *(param+4); Param[5] = *(param+5);
	Param[6] = *(param+6);
}

int KFRENTER::task1(void)
{
	double R1, V1, G, D;
	double b;

	R1 = sqrt((pow(M[0], 2)+ pow(M[1],2)));
	V1 = sqrt(pow(M[2],2)+pow(M[3],2));
	b  = Param[1] * exp(M[4]);
	D = b * exp((Param[4]-R1)/Param[2]) * V1;
	G = -Param[3]/(pow(R1,3));

	dot_x[0] = M[2];
	dot_x[1] = M[3];
	dot_x[2] = D*M[2]+G*M[1];
	dot_x[3] = D*M[3]+G*M[1];
    dot_x[4] = (double) 0.0;

	M[0] = M[0] + Param[0]*dot_x[0];
	M[1] = M[1] + Param[0]*dot_x[1];
	M[2] = M[2] + Param[0]*dot_x[2];
	M[3] = M[3] + Param[0]*dot_x[3];
	M[4] = M[4] + Param[0]*dot_x[4];

	return 1;
}

int KFRENTER::task2(void)
{
	double R1, V1, G, D;
	double b;

	R1 = sqrt((pow(M[0], 2)+ pow(M[1],2)));
	V1 = sqrt(pow(M[2],2)+pow(M[3],2));
	b  = Param[1] * exp(M[4]);
	D = b * exp((Param[4]-R1)/Param[2]) * V1;
	G = -Param[3]/(pow(R1,3));

	double dR_dx1 = M[0]/R1;
	double dR_dx2 = M[1]/R1;
	double dV_dx3 = M[2]/V1;
	double dV_dx4 = M[3]/V1;
	double db_dx5 = b;

	double dD_dx1 = b * (-dR_dx1/Param[2]) * exp((Param[4]-R1)/Param[2]) * V1;
	double dD_dx2 = b * (-dR_dx2/Param[2]) * exp((Param[4]-R1)/Param[2]) * V1;
	double dD_dx3 = b * (exp((Param[4]-R1)/Param[2]) * dV_dx3);
	double dD_dx4 = b * (exp((Param[4]-R1)/Param[2]) * dV_dx4);
	double dD_dx5 = db_dx5 * exp((Param[4]-R1)/Param[2]) * V1;
	double dG_dx1 = -Param[3]*(-3*dR_dx1/pow(R1,4));
	double dG_dx2 = -Param[3]*(-3*dR_dx2/pow(R1,4));

	double tempDFc1 = dD_dx1 * M[2] + dG_dx1 * M[0] + G;
	double tempDFc2 = dD_dx2 * M[2] + dG_dx2 * M[0];
	double tempDFc3 = dD_dx3 * M[2] + D;
	double tempDFc4 = dD_dx4 * M[2];
	double tempDFc5 = dD_dx5 * M[2];

	double tempDFd1 = dD_dx1 * M[3] + dG_dx1 * M[1];
	double tempDFd2 = dD_dx2 * M[3] + dG_dx2 * M[1] + G;
	double tempDFd3 = dD_dx3 * M[3];
	double tempDFd4 = dD_dx4 * M[3] + D;
	double tempDFd5 = dD_dx5 * M[3];

	mat5 df( (double) 0.0, (double) 0.0, (double) 1.0, (double) 0.0, (double) 0.0,
			 (double) 0.0, (double) 0.0, (double) 0.0, (double) 1.0, (double) 0.0,
			 tempDFc1, tempDFc2, tempDFc3, tempDFc4, tempDFc5,
			 tempDFd1, tempDFd2, tempDFd3, tempDFd4, tempDFd5,
			 (double) 0.0, (double) 0.0, (double) 0.0, (double) 0.0, (double) 0.0);


	double tempAa1 = (df.getA1()*Param[0])+(double)1.0;
	double tempAa2 = (df.getA2()*Param[0])+(double)1.0;
	double tempAa3 = (df.getA3()*Param[0])+(double)1.0;
	double tempAa4 = (df.getA4()*Param[0])+(double)1.0;
	double tempAa5 = (df.getA5()*Param[0])+(double)1.0;

	double tempAb1 = df.getB1()*Param[0];
	double tempAb2 = df.getB2()*Param[0];
	double tempAb3 = df.getB3()*Param[0];
	double tempAb4 = df.getB4()*Param[0];
	double tempAb5 = df.getB5()*Param[0];

	double tempAc1 = df.getC1()*Param[0];
	double tempAc2 = df.getC2()*Param[0];
	double tempAc3 = df.getC3()*Param[0];
	double tempAc4 = df.getC4()*Param[0];
	double tempAc5 = df.getC5()*Param[0];

	double tempAd1 = df.getD1()*Param[0];
	double tempAd2 = df.getD2()*Param[0];
	double tempAd3 = df.getD3()*Param[0];
	double tempAd4 = df.getD4()*Param[0];
	double tempAd5 = df.getD5()*Param[0];

	double tempAe1 = df.getE1()*Param[0];
	double tempAe2 = df.getE2()*Param[0];
	double tempAe3 = df.getE3()*Param[0];
	double tempAe4 = df.getE4()*Param[0];
	double tempAe5 = df.getE5()*Param[0];

	mat5 tempiA (tempAa1, tempAa2, tempAa3, tempAa4, tempAa5,
			    tempAb1, tempAb2, tempAb3, tempAb4, tempAb5,
				tempAc1, tempAc2, tempAc3, tempAc4, tempAc5,
				tempAd1, tempAd2, tempAd3, tempAd4, tempAd5,
				tempAe1, tempAe2, tempAe3, tempAe4, tempAe5
	);
	A = tempiA;

	mat5 tempA(A.getA1(), A.getB1(), A.getC1(), A.getD1(), A.getE1(),
		   A.getA2(), A.getB2(), A.getC2(), A.getD2(), A.getE2(),
		   A.getA3(), A.getB3(), A.getC3(), A.getD3(), A.getE3(),
		   A.getA4(), A.getB4(), A.getC4(), A.getD4(), A.getE4(),
		   A.getA5(), A.getB5(), A.getC5(), A.getD5(), A.getE5());

	P=A*P*tempA+Q;
	return 1;
}

int KFRENTER::task3(void)
{
	MU[0] = sqrt (pow((M[0]-Param[5]),2) + pow((M[1]-Param[6]),2) );
	MU[1] = atan2 ( (M[1] - Param[6]) , (M[0] - Param[5]) );

	return 1;
}

int KFRENTER::task4(void)
{
	double F1 = pow( (M[0]-Param[5]) , 2 ) + pow((M[1] - Param[6]) , 2);
	double F2 = sqrt(F1);

	H0[0] = (M[0] - Param[5]) / F2; H0[1] = (M[1] - Param[6]) / F2; H0[2] = 0; H0[3] = 0; H0[4] = 0;
	H1[0] = (M[1] - Param[6]) / F2; H1[1] = (M[0] - Param[5]) / F1; H1[2] = 0; H1[3] = 0; H1[4] = 0;

	return 1;
}

int KFRENTER::task5(void)
{
	/* s = r+H*p*H' */
	double tempMulti[10];
	tempMulti[0] = H0[0] * P.getA1() + H0[1]*P.getB1() + H0[2]*P.getC1() + H0[3]*P.getD1() + H0[4]*P.getE1();
	tempMulti[1] = H0[0] * P.getA2() + H0[1]*P.getB2() + H0[2]*P.getC2() + H0[3]*P.getD2() + H0[4]*P.getE2();
	tempMulti[2] = H0[0] * P.getA3() + H0[1]*P.getB3() + H0[2]*P.getC3() + H0[3]*P.getD3() + H0[4]*P.getE3();
	tempMulti[3] = H0[0] * P.getA4() + H0[1]*P.getB4() + H0[2]*P.getC4() + H0[3]*P.getD4() + H0[4]*P.getE4();
	tempMulti[4] = H0[0] * P.getA5() + H0[1]*P.getB5() + H0[2]*P.getC5() + H0[3]*P.getD5() + H0[4]*P.getE5();

	tempMulti[5] = H1[0] * P.getA1() + H1[1]*P.getB1() + H1[2]*P.getC1() + H1[3]*P.getD1() + H1[4]*P.getE1();
	tempMulti[6] = H1[0] * P.getA2() + H1[1]*P.getB2() + H1[2]*P.getC2() + H1[3]*P.getD2() + H1[4]*P.getE2();
	tempMulti[7] = H1[0] * P.getA3() + H1[1]*P.getB3() + H1[2]*P.getC3() + H1[3]*P.getD3() + H1[4]*P.getE3();
	tempMulti[8] = H1[0] * P.getA4() + H1[1]*P.getB4() + H1[2]*P.getC4() + H1[3]*P.getD4() + H1[4]*P.getE4();
	tempMulti[9] = H1[0] * P.getA5() + H1[1]*P.getB5() + H1[2]*P.getC5() + H1[3]*P.getD5() + H1[4]*P.getE5();

	double tempMat2[4];
	tempMat2[0] = tempMulti[0] * H0[0] + tempMulti[1] * H0[1] + tempMulti[2] * H0[2] + tempMulti[3] * H0[3] + tempMulti[4] * H0[4];
	tempMat2[1] = tempMulti[0] * H1[0] + tempMulti[1] * H1[1] + tempMulti[2] * H1[2] + tempMulti[3] * H1[3] + tempMulti[4] * H1[4];

	tempMat2[2] = tempMulti[5] * H0[0] + tempMulti[6] * H0[1] + tempMulti[7] * H0[2] + tempMulti[8] * H0[3] + tempMulti[9] * H0[4];
	tempMat2[3] = tempMulti[5] * H1[0] + tempMulti[6] * H1[1] + tempMulti[7] * H1[2] + tempMulti[8] * H1[3] + tempMulti[9] * H1[4];

	mat2 temp2Mat(tempMat2[0], tempMat2[1], tempMat2[2], tempMat2[3]);
	S = R+temp2Mat;
	//TODO FIGURE OUT ISSUE WITH tempMulti
	/*s =

	  2×2 single matrix

	  487.8000   92.3849
	  110.2155   27.0887*/

	return 1;
}

int KFRENTER::task6(void)
{
	mat2 temp = S.inverse();
	//[4x2]K = P*H'*inv(s)
	//http://www.calcul.com/show/calculator/matrix-multiplication_;5;5;5;2

	double tempPH0[5], tempPH1[5];

	tempPH0[0] = P.getA1()*H0[0] + P.getA2()*H0[1] + P.getA3()*H0[2] + P.getA4()*H0[3] + P.getA5()*H0[4];
	tempPH0[1] = P.getB1()*H0[0] + P.getB2()*H0[1] + P.getB3()*H0[2] + P.getB4()*H0[3] + P.getB5()*H0[4];
	tempPH0[2] = P.getC1()*H0[0] + P.getC2()*H0[1] + P.getC3()*H0[2] + P.getC4()*H0[3] + P.getC5()*H0[4];
	tempPH0[3] = P.getD1()*H0[0] + P.getD2()*H0[1] + P.getD3()*H0[2] + P.getD4()*H0[3] + P.getD5()*H0[4];
	tempPH0[4] = P.getE1()*H0[0] + P.getE2()*H0[1] + P.getE3()*H0[2] + P.getE4()*H0[3] + P.getE5()*H0[4];

	tempPH1[0] = P.getA1()*H1[0] + P.getA2()*H1[1] + P.getA3()*H1[2] + P.getA4()*H1[3] + P.getA5()*H1[4];
	tempPH1[1] = P.getB1()*H1[0] + P.getB2()*H1[1] + P.getB3()*H1[2] + P.getB4()*H1[3] + P.getB5()*H1[4];
	tempPH1[2] = P.getC1()*H1[0] + P.getC2()*H1[1] + P.getC3()*H1[2] + P.getC4()*H1[3] + P.getC5()*H1[4];
	tempPH1[3] = P.getD1()*H1[0] + P.getD2()*H1[1] + P.getD3()*H1[2] + P.getD4()*H1[3] + P.getD5()*H1[4];
	tempPH1[4] = P.getE1()*H1[0] + P.getE2()*H1[1] + P.getE3()*H1[2] + P.getE4()*H1[3] + P.getE5()*H1[4];

	K[0][0] = tempPH0[0] * temp.getA1() + tempPH1[0] * temp.getB1();
	K[0][1] = tempPH0[0] * temp.getA2() + tempPH1[0] * temp.getB2();

	K[1][0] = tempPH0[1] * temp.getA1() + tempPH1[1] * temp.getB1();
	K[1][1] = tempPH0[1] * temp.getA2() + tempPH1[1] * temp.getB2();

	K[2][0] = tempPH0[2] * temp.getA1() + tempPH1[2] * temp.getB1();
	K[2][1] = tempPH0[2] * temp.getA2() + tempPH1[2] * temp.getB2();

	K[3][0] = tempPH0[3] * temp.getA1() + tempPH1[3] * temp.getB1();
	K[3][1] = tempPH0[3] * temp.getA2() + tempPH1[3] * temp.getB2();

	K[4][0] = tempPH0[4] * temp.getA1() + tempPH1[4] * temp.getB1();
	K[4][1] = tempPH0[4] * temp.getA2() + tempPH1[4] * temp.getB2();

	//temp.print();
	return 1;
}

int KFRENTER::task7(void)
{
	double tempMUy[2] = {MU[0] - Y[0], MU[1]-Y[1] };
	double tempK[5];

	tempK[0] = K[0][0] * tempMUy[0] + K[0][1]*tempMUy[1];
	tempK[1] = K[1][0] * tempMUy[0] + K[1][1]*tempMUy[1];
	tempK[2] = K[2][0] * tempMUy[0] + K[2][1]*tempMUy[1];
	tempK[3] = K[3][0] * tempMUy[0] + K[3][1]*tempMUy[1];
	tempK[4] = K[4][0] * tempMUy[0] + K[4][1]*tempMUy[1];

	M[0] = M[0] + tempK[0];
	M[1] = M[1] + tempK[1];
	M[2] = M[2] + tempK[2];
	M[3] = M[3] + tempK[3];
	M[4] = M[4] + tempK[4];

	return 1;
}

int KFRENTER::task8(void)
{
	/*  P = P - K*S*K'  */
	double tempKS[5][2];
	double tempKSK[5][5];

	tempKS[0][0] = K[0][0]*S.getA1() + K[0][1]*S.getB1();
	tempKS[0][1] = K[0][0]*S.getA2() + K[0][1]*S.getB2();
	tempKS[1][0] = K[1][0]*S.getA1() + K[1][1]*S.getB1();
	tempKS[1][1] = K[1][0]*S.getA2() + K[1][1]*S.getB2();
	tempKS[2][0] = K[2][0]*S.getA1() + K[2][1]*S.getB1();
	tempKS[2][1] = K[2][0]*S.getA2() + K[2][1]*S.getB2();
	tempKS[3][0] = K[3][0]*S.getA1() + K[3][1]*S.getB1();
	tempKS[3][1] = K[3][0]*S.getA2() + K[3][1]*S.getB2();
	tempKS[4][0] = K[4][0]*S.getA1() + K[4][1]*S.getB1();
	tempKS[4][1] = K[4][0]*S.getA2() + K[4][1]*S.getB2();

	tempKSK[0][0] = tempKS[0][0] * K[0][0] + tempKS[0][1] * K[0][1];
	tempKSK[1][0] = tempKS[1][0] * K[0][0] + tempKS[1][1] * K[0][1];
	tempKSK[2][0] = tempKS[2][0] * K[0][0] + tempKS[2][1] * K[0][1];
	tempKSK[3][0] = tempKS[3][0] * K[0][0] + tempKS[3][1] * K[0][1];
	tempKSK[4][0] = tempKS[4][0] * K[0][0] + tempKS[4][1] * K[0][1];

	tempKSK[0][1] = tempKS[0][0] * K[1][0] + tempKS[0][1] * K[1][1];
	tempKSK[1][1] = tempKS[1][0] * K[1][0] + tempKS[1][1] * K[1][1];
	tempKSK[2][1] = tempKS[2][0] * K[1][0] + tempKS[2][1] * K[1][1];
	tempKSK[3][1] = tempKS[3][0] * K[1][0] + tempKS[3][1] * K[1][1];
	tempKSK[4][1] = tempKS[4][0] * K[1][0] + tempKS[4][1] * K[1][1];

	tempKSK[0][2] = tempKS[0][0] * K[2][0] + tempKS[0][1] * K[2][1];
	tempKSK[1][2] = tempKS[1][0] * K[2][0] + tempKS[1][1] * K[2][1];
	tempKSK[2][2] = tempKS[2][0] * K[2][0] + tempKS[2][1] * K[2][1];
	tempKSK[3][2] = tempKS[3][0] * K[2][0] + tempKS[3][1] * K[2][1];
	tempKSK[4][2] = tempKS[4][0] * K[2][0] + tempKS[4][1] * K[2][1];

	tempKSK[0][3] = tempKS[0][0] * K[3][0] + tempKS[0][1] * K[3][1];
	tempKSK[1][3] = tempKS[1][0] * K[3][0] + tempKS[1][1] * K[3][1];
	tempKSK[2][3] = tempKS[2][0] * K[3][0] + tempKS[2][1] * K[3][1];
	tempKSK[3][3] = tempKS[3][0] * K[3][0] + tempKS[3][1] * K[3][1];
	tempKSK[4][3] = tempKS[4][0] * K[3][0] + tempKS[4][1] * K[3][1];

	tempKSK[0][4] = tempKS[0][0] * K[4][0] + tempKS[0][1] * K[4][1];
	tempKSK[1][4] = tempKS[1][0] * K[4][0] + tempKS[1][1] * K[4][1];
	tempKSK[2][4] = tempKS[2][0] * K[4][0] + tempKS[2][1] * K[4][1];
	tempKSK[3][4] = tempKS[3][0] * K[4][0] + tempKS[3][1] * K[4][1];
	tempKSK[4][4] = tempKS[4][0] * K[4][0] + tempKS[4][1] * K[4][1];

	mat5 matKSK(tempKSK[0][0], tempKSK[0][1], tempKSK[0][2], tempKSK[0][3], tempKSK[0][4],
				tempKSK[1][0], tempKSK[1][1], tempKSK[1][2], tempKSK[1][3], tempKSK[1][4],
				tempKSK[2][0], tempKSK[2][1], tempKSK[2][2], tempKSK[2][3], tempKSK[2][4],
			    tempKSK[3][0], tempKSK[3][1], tempKSK[3][2], tempKSK[3][3], tempKSK[3][4],
				tempKSK[4][0], tempKSK[4][1], tempKSK[4][2], tempKSK[4][3], tempKSK[4][4]);
	P = P-matKSK;
	//P.print();
	return 1;
}

#endif
