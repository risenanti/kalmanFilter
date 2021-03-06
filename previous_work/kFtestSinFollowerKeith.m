%testing script for KalmanFilter2D.hpp

%task 1 TEST
p = [3, 0, 2; 2,0,-2; 0,1,1];
a = [2.66,0,22; 2,30,-2; 0,1,1];
q = [22,11,10; 15,5,3; 2,6,7];

m = [1; 2; 3];

m = a*m;
%END TASK ONE TEST

%test task 2
p = a*p*inv(a)+q;
%end test task two

%begin task 3 testing
MU = m(3,1) * sin(m(1,1));
%end task 3 testing

%begin task 4 testing
H = [m(3,1)*cos(m(1,1)) , 0, sin(m(1,1))];
%end task 4 testing

%begin task 5 test
S = H*p*H'+1;
%end task 5 test

%Begin task 6 testing
K=p*H'/S;
%end task 6 testing

%Begin Task 7 Testing
Y=6;
m = m+K*(Y-MU);
%End Task 7 Testing

%Begin Task 8 Testing
P = P-K*S*K';
%End Task 8 Testing