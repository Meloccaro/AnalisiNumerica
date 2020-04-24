clc;
clear all;
close all;
a=[1,-0.5,1,0;2,-1,-1,1;1,1,0,0;1,-0.5,1,1]
b=[4;5;2;5]
ab=[a,b];
ab
% prima riduzione
ab(2,:)=2*ab(1,:)-ab(2,:);
ab(3,:)=ab(1,:)-ab(3,:);
ab(4,:)=ab(1,:)-ab(4,:);
ab
%scambio righe
temp=ab(3,:);
ab(3,:)=ab(2,:);
ab(2,:)=temp;
ab
% cerco varabili x
x(4)=ab(4,5)/ab(4,4);
x(3)=(ab(3,5)-ab(3,4)*x(4))/ab(3,3);

x(2)=(ab(2,5)-ab(2,4)*x(4)-ab(2,3)*x(3))/ab(2,2);
x(1)=(ab(1,5)-ab(1,4)*x(4)-ab(1,3)*x(3)-ab(1,2)*x(2))/ab(1,1);
x
% verifica
a*x'
