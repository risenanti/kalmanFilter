q = [1,2,3,4,5; 
     6,7,8,9,10;
     11,12,13,14,15;
     16,17,18,19,20;
     21,22,23,24,25];
 p = q;
 s = [1,2;3,4];
 r=[1,1;2,5];
 m = [1.1; 2.2; 3.3; 4.6; 1.7];
 param = [1;2;3;4;5;6;7];
 
 R1 = sqrt(m(1,1) ^2 + m(2,1) ^2 );
 V1 = sqrt(m(3,1) ^2 + m(4,1) ^2 );
 b = param(2,1) * exp(m(5,:));
 
 D = b * exp((param(5,1)-R1)/param(3,1)) * V1;
 G = -param(4,1)/ R1^3 ;
 
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

df = zeros(5,5);
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
dot_x = [m(3,1);m(4,1); D*m(3,1)+G*m(1,1); D *m(4,1) + G*m(2,1); 0];
