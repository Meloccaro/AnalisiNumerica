clc;
close all;

a=[2,-1,3;-2,3,-1;3,-2,2]
b=[1;-2;-1];
ab=[a,b]

ab(2,:)=ab(1,:)+ab(2,:);
ab(3,:)=3*ab(1,:)-2*ab(3,:);
ab
ab(3,:)=ab(2,:)-2*ab(3,:);

ab