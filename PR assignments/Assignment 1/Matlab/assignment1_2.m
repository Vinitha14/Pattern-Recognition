V=[ 28, 31, 130, 68.12;
    24, 28, 143, 127.89;
    28, 20, 136, 89.03;
    32, 34, 130.5, 78.28;
    22, 15, 125, 134.08;
    26, 37, 147.5 135.31;
    24, 19, 135, 130.48;
    28, 22, 125, 86.48;
    24, 26, 127, 129.47;
    30, 21, 139, 82.43;
    22, 20, 121.5, 127.41;
    30, 38, 150.5, 71.21;
    24, 17, 120, 132.06;
    26, 20, 125, 90.85];

X=[30,20,133,189.6;
    22,30,100.6,126.0075;
    28.47,20.11,133.06,188.90];


D=zeros(3,1);
Vmean=mean(V,1)
Vcov=cov(V)
VcovI=inv(Vcov)
(X(1,:)-Vmean)
(X(2,:)-Vmean)
(X(3,:)-Vmean)


for i=1:3
    D(i)=sqrt((X(i,:)-Vmean)*VcovI*((X(i,:)-Vmean)'));
end

D
[M,I]=min(D);

fprintf("\nThe closest point is X%d with distance %f\n",I,M);


