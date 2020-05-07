close all;
clear all;
clc;
a=0; b=1/3; c=1.0;
n=6;
h=(b-a)/n;
ws(1)=1.0;
ws(n+1)=1.0;
for i=2:2:n-2
    ws(i)=4.0;
    ws(i+1)=2.0;
end
ws(n)=4.0;
x=linspace(a,b,n+1);
for i=1:n+1
    y(i)=f1(x(i));
end
int1=h*sum(ws.*y)/3.0;
h=(c-b)/n;
x=linspace(b,c,n+1);
for i=1:n+1
    y(i)=f2(x(i));
end
int2=h*sum(ws.*y)/3.0;
int=int1+int2;
esatto=ff1(b)-ff1(a)+ff2(c)-ff2(b);
fprintf("%f\t%f\t%e\n", int, esatto, abs(int-esatto));
function y=f1(x)
    y=exp(x); 
end
function y=f2(x)
    y=exp(-x)+2; 
end
function y=ff1(x)
    y=exp(x); 
end
function y=ff2(x)
    y=-exp(-x)+2*x; 
end