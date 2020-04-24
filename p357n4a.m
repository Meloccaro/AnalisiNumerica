clc;
clear all;
close all;
a=[1/4,1/5,1/6;1/3,1/4,1/5;1/2,1,2]
b=[9;8;8]
ab=[a,b];
ab
% prima riduzione
ab(2,:)=(1/4)*ab(2,:)-(1/3)*ab(1,:);
ab(3,:)=(1/2)*ab(1,:)-(1/4)*ab(3,:);
ab
ab(3,:)=ab(2,2)*ab(3,:)-ab(3,2)*ab(2,:);
% soluzioni
x(3)=ab(3,4)/ab(3,3);
x(2)=(ab(2,4)-ab(2,3)*x(3))/ab(2,2);
x(1)=(ab(1,4)-ab(1,3)*x(3)-ab(1,2)*x(2))/ab(1,1);
x
% verifica
b
a*x'
%it worksss