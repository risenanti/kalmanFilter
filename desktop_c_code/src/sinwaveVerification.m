%predict Step
%Task1 M = A*M
M = [   0; 
       10; 
        1;   ];
    
P=  [   3,  0,     0;
        0,  3,     3;
        0,  0,     3];
    
A = [   1,  0.010, 0
        0,  1,     0;
        0,  0,     1];
    
Q=  [   0,  0,     0;
        0,  0.002, 0;
        0,  0,     0];
Y=1.834366773357689;
%Task1 M=A*M
M=A*M

%M =
%    0.1000
%   10.0000
%    1.0000

%Task2 P = A*P*A' + Q
P = A*P*A'+Q
%P = 3.0003    0.0300    0.0300
%    0.0300    3.0020    3.0000
%         0         0    3.0000

%Update step
%Task 3 MU = M(3,1) * sin(M(1,1)
MU = M(3,1)*sin(M(1,1))
%   MU = 0.0998

%Task4: H = [M(3,1) . cos(M(1,1)) 0 sin(M(1,1))]
H = [M(3,1) * cos(M(1,1)), 0, sin(M(1,1))]
%   H = 0.9950         0    0.0998

%Task 5: S = 1 + H X P X H
S = 1+H*P*H'
%S = 4.0033

%Task 6: K = P*H'/S
K = P*H'/S
   %k = 0.7465
   %    0.0823
   %    0.0748
%Task 7: M = M + K * (Y – MU)
M = M + K * (Y - MU)
   %M =
   %      1.3948
   %      10.1427
   %      1.1298
%Task 8:  P = P – K X S X K'
P = P-K*S*K'
   %P =
   %     0.7696   -0.2158   -0.1936
   %    -0.2158    2.9749    2.9754
   %    -0.2236   -0.0246    2.9776