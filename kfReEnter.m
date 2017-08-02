q = single([1,2,3,4,5; 
     6,7,8,9,10;
     11,12,13,14,15;
     16,17,18,19,20;
     21,22,23,24,25]);
 p = single(q);
 s = single([1,2;3,4]);
 r=single([1,1;2,5]);
 m = single([1.1; 2.2; 3.3; 4.6; 1.7]);
 param = single([1;2;3;4;5;6;7]);
 
 R1 = single(sqrt(m(1,1) ^2 + m(2,1) ^2 ));
 V1 = single(sqrt(m(3,1) ^2 + m(4,1) ^2 ));
 b  = single(param(2,1) * exp(m(5,:)));
 
 D = single(b * exp((param(5,1)-R1)/param(3,1)) * V1);
 G = single(-param(4,1)/ R1^3) ;
 
 dR_dx1 = m(1,1) / R1;
 dR_dx2 = m(2,1) / R1;
 dV_dx3 = m(3,1) / V1;
 dV_dx4 = m(4,1) / V1;
 db_dx5 = b;
  
dD_dx1 = b * (-dR_dx1/param(3,1)) * exp((param(5,1)-R1)/param(3,1)) * V1;
dD_dx2 = b * (-dR_dx2/param(3,1)) * exp((param(5,1)-R1)/param(3,1)) * V1;
dD_dx3 = b * exp((param(5,1)-R1)/param(3,1)) * dV_dx3;
dD_dx4 = b * exp((param(5,1)-R1)/param(3,1)) * dV_dx4;
dD_dx5 = db_dx5 * exp((param(5,1)-R1)/param(3,1)) * V1;
dG_dx1 = -param(4,1) * (-3 * dR_dx1 / R1 ^4 );
dG_dx2 = -param(4,1) * (-3 * dR_dx2 / R1 ^4 );

%verified to this point

df = single(zeros(5,5));
df(1,3) = 1;
df(2,4) = 1;
df(3,1) = dD_dx1 * m(3,1) + dG_dx1 * m(1,1) + G;
df(3,2) = dD_dx2 * m(3,1) + dG_dx2 * m(1,1);
df(3,3) = dD_dx3 * m(3,1) + D;
df(3,4) = dD_dx4 * m(3,1);
df(3,5) = dD_dx5 * m(3,1);
df(4,1) = dD_dx1 * m(4,1) + dG_dx1 * m(2,1);
df(4,2) = dD_dx2 * m(4,1) + dG_dx2 * m(2,1) + G;
df(4,3) = dD_dx3 * m(4,1);
df(4,4) = dD_dx4 * m(4,1) + D;
df(4,5) = dD_dx5 * m(4,1);
A = eye(5,1) + param(1,1) * df;
dot_x = [m(3,1);
         m(4,1); 
         D*m(3,1)+G*m(1,1); 
         D *m(4,1) + G*m(2,1); 
         0];
     
%Task 1
m = single(m + param(1,1)*dot_x);
%end task 1

%task 2
p = A*p*A'+q;
%end task2

%task 3
MU =  single(zeros(2,1));
MU(1,1) = sqrt ( (m(1,1) - param(6,1))^2 + (m(2,1) - param(7,1))^2 );
MU(2,1) = atan2 ((m(2,1) - param(7,1)) , m(1,1) - param(6,1));
%end task 3

%task 4
F1 = single([(m(1,1) - param(6,1)) ^2 + (m(2,1) - param(7,1)) ^2 ]);
F2 = single(sqrt (F1));

H = single(0);
H = [((m(1,1) - param(6,1) ) / F2), ((m(2,1) - param(7,1)) / F2), 0, 0, 0;
     ((m(2,1) - param(7,1)) / F1 ), ((m(1,1) - param(6,1)) / F1), 0, 0, 0];
%end task 4

%task 5
s = r+H*p*H'
%end task 5

%task 6
k = p*H'*inv(s)
%end task 6