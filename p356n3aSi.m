clc;
clear all;
close all;
a=[1,-1,1;3,-3,1;1,1,0]
b=[2,-1,3]
ab=[a,b'];
ab
ab(2,:)=ab(2,:)-3*ab(1,:);
ab(3,:)=ab(1,:)-ab(3,:);

temp=ab(3,:);

ab(3,:)=ab(2,:);

ab(2,:)=temp;
ab
%soluzione
x(3)=ab(3,4)/ab(3,3);

x(2)=(ab(2,4)-ab(2,3)*x(3))/ab(2,2);

x(1)=(ab(1,4)-ab(1,3)*x(3)-ab(1,2)*x(2))/ab(1,1);

x
% verifica
a*x'