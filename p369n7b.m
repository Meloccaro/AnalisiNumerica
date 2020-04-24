clc;
close all;
clear all;
a=[58.9,0.03;-6.10,5.31];
b=[39.2;47.0];
ab=[a,b];
ab
% cerco coefficiente m
m=ab(2,1)/ab(1,1);
%riduzione di gauss
ab(2,:)=ab(2,:)-ab(1,:)*m;
ab
% viene