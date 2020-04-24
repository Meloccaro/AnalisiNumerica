clc;

a=[0.03,58.9;5.31,-6.10]
b=[59.2;47]
ab=[a,b];
ab;
m=ab(2,1)/ab(1,1);% questo è il coeff di scalatura
ab(2,:)=ab(2,:)-m*ab(1,:);
ab
x(2)=ab(2,3)/ab(2,2);
x(1)=(ab(1,3)-ab(1,2)*x(2))/ab(1,1);
% verifica

x

% questo viene