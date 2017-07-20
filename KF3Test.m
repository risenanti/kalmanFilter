    p = single([1,2,3,4; 5,6,7,8; 9,10,11,12; 13,14,15,16]);
    a = p;
    q = a+p;  %[1.1,2.2,2.3,3.2;3.3,4.4,5.5,2.1;4.4,3.2,1.6,2.2;2.1,3.1,4.4,5.1];
    s = single([1,2;3,4]);
    r = single([5,6;7,8]);
    m = single([1;2;3;4]);
    
    %Begin Task1 Test
    m = a*m;
    %end Task1 Test
    
    %begin task 2 test
    p = a*p*a'+q;
    %end task 2 test
    
    %begin testing task 3
    mu=[atan2(m(2,1)-s(2,1), m(1,1)-s(1,1)) ;  atan2(m(2,1)-s(2,2), m(1,1)-s(1,2))];
    %end testing task 3
    
    %begin testing task 4
    f1 = (m(1,1) - s(1,1))^2 + (m(2,1) - s(2,1))^2;
    f2 = (m(1,1) - s(1,2))^2 + (m(2,1) - s(2,2))^2;
    
    h = [(-(m(2,1) - s(2,1)) / f1), ((m(1,1) - s(1,1)) / f1), 0, 0 ;
                 (-(m(2,1) - s(2,2)) / f2), ((m(1,1) - s(1,2)) / f2), 0, 0]
    %end testing task 4
    
    %begin testing task 5
    s = r +h*p*h';
    %end testing task 5
    
    %begin testing task 6
    k = p*h'*inv(s);
    %end testing task 6
    
    %begin testing task 7
    y = [1.01;0.042];
    m = m + k * (y-mu);
    %end testing tak 7
    
    %begin testing task 8
    p = p-k*s*k'
    %end testing task 8