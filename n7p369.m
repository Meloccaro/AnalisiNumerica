clc;
close all;
clear all;
a=[3.03,-12.1,14;-3.03,12,-7;6.11,-14.2,21];
b=[-119;120;-139];
ab=[a,b];
ab
s1=max(abs(ab(1,:)));
s2=max(abs(ab(2,:)));
s3=max(abs(ab(3,:)));
m1=ab(1,1)/s1;
m2=ab(2,1)/s2;
m3=ab(3,1)/s3;
ab(3,:)=ab(3,:)-ab(1,:);
ab
m21=ab(2,1)/ab(1,1);
m31=ab(3,1)/ab(1,1);
ab(2,:)=ab(2,:)-m21*ab(1,:);
ab(3,:)=ab(3,:)-m31*ab(1,:);
ab


