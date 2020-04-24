close all;
clear all;
a=[4,1,2;2,4,-1;1,1,-3]
b=[9,-5,9]
ab=[a,b'];
ab
%primo turno di riduzione
ab(2,:)=4*ab(2,:)-2*ab(1,:);
ab(3,:)=4*ab(3,:)-ab(1,:);
ab
%secondo turno di riduzione
ab(3,:)=14*ab(3,:)-3*ab(2,:);
% cerco ora le soluzioni
ab
x(3)=(ab(3,4))/ab(3,3);
x(2)=(ab(2,4)-ab(2,3)*x(3))/ab(2,2);
x(1)=(ab(1,4)-ab(1,3)*x(3)-ab(1,2)*x(2))/ab(1,1);
x