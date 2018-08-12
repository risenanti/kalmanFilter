#include <msp430.h>
#include "math.h"
#include "mat2.hpp"
#include "mat3.hpp"
#include<stdint.h>

struct kf_values{
  double M0;
  double M1;
  double M2;
  mat3 A;
  mat3 P;
  mat3 Q;
  double MU;
  double H0;
  double H1;
  double H2;

  double S;
  double K0, K1, K2;
  double Y;
};

kf_values filter(kf_values value){
//Task1
//M=A*M

double tempM0 = value.M0, tempM1 = value.M1, tempM2 = value.M2;
value.M0 = value.A.getA1()*tempM0+value.A.getA2()*tempM1 + value.A.getA3()*tempM2;
value.M1 = value.A.getB1()*tempM0+value.A.getB2()*tempM1 + value.A.getB3()*tempM2;
value.M2 = value.A.getC1()*tempM0+value.A.getC2()*tempM1 + value.A.getC3()*tempM2;

//task2
//P=A*P*A.transpose()+Q;

value.P=value.A*value.P*value.A.transpose()+value.Q;

//task3
//MU = M2*sinf(M0);

value.MU = value.M2*sin(value.M0);

//Task4

value.H0 = value.M2*cos(value.M0);
value.H1 = 0;
value.H2 = sin(value.M0);

//Task5

double temp0, temp1, temp2;
temp0 = value.H0*value.P.getA1()+value.H1*value.P.getB1()+value.H2*value.P.getC1();
temp1 = value.H0*value.P.getA2()+value.H1*value.P.getB2()+value.H2*value.P.getC2();
temp2 = value.H0*value.P.getA3()+value.H1*value.P.getB3()+value.H2*value.P.getC3();
value.S = temp0*value.H0+temp1*value.H1+temp2*value.H2;
value.S+=1;

//Task6

value.K0 = (value.P.getA1()*value.H0+value.P.getB1()*value.H1+value.P.getC1()*value.H2);
value.K1 = (value.P.getA2()*value.H0+value.P.getB2()*value.H1+value.P.getC2()*value.H2);
value.K2 = (value.P.getA3()*value.H0+value.P.getB3()*value.H1+value.P.getC3()*value.H2);

//task7

value.M0 = value.M0+value.K0*(value.Y-value.MU);
value.M1 = value.M0+value.K1*(value.Y-value.MU);
value.M2 = value.M0+value.K2*(value.Y-value.MU);

//task8

temp0 = value.K0*value.S;
temp1 = value.K1*value.S;
temp2 = value.K2*value.S;

mat3 tempMat(temp0 * value.K0, temp0 * value.K1, temp0 * value.K2, temp1 * value.K0,
    temp1 * value.K1, temp1 * value.K2, temp2 * value.K0, temp2 * value.K1, temp2 * value.K2);
value.P = value.P-tempMat;

return value;
}

void main(void)
{
    WDTCTL = WDTPW | WDTHOLD;       // stop watchdog timer
    P1DIR |= 0x01;                  // configure P1.0 as output
    TA0CCTL0 = CCIE;                          // CCR0 interrupt enabled
    TA0CTL = TASSEL_2 + MC_1 + TACLR;         // SMCLK, upmode, clear TAR

    volatile unsigned int i;        // volatile to prevent optimization
    mat3 p(3,0,2,2,0,-2,0,1,1);
    mat3 a(2.66,0,22,2,30,-2,0,1,1);
    mat3 q(22,11,10, 15,5,3, 2,6,7);

      kf_values value;

      value.A  = a;
      value.M0 = 1;
      value.M1 = 2;
      value.M2 = 3;
      value.Q  = q;
      value.P  = p;
      value.Y  = 1.564;

      value = filter(value);

    while(1)
    {
        P1OUT ^= 0x01;              // toggle P1.0
        __delay_cycles(1000);
        value = filter(value);
    }
}
