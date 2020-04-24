%Esercizio 2.2.3

clear all;
close all;

clc;
n=51;

x=linspace(0,1,n);

for i=1:n
    
y(i)=f(x(i));
 
   yp(i)=fp(x(i));
  
  zero(i)=0;
end
plot(x,y);

hold on

plot(x,yp);

hold on

plot(x,zero,'k');

fprintf("f(1) = %f\tf(4/3) = %f\tf(4) = %f\n", f(1),f(4/3),f(4));
% Start Newton-Raphson
tol=1.0e-5;
x0=2.0;

sx(1)=x0;

for i=1:n
 
   dx=f(sx(i))/fp(sx(i));
 
   sx(i+1)=sx(i)-dx;
  
  fprintf ("%d\t%f\n", i, sx(i));

    if(abs(dx)<=tol)
    
    nf=i;
     
   z=sx(i+1);
  
      break
    
end
end
fprintf("nf = %d\t z = %f\n", nf, z);   
 
function y=f(x)
 
   y=(1/(1+x^4))-x;
end
function y=fp(x)
   
 y=(-(4*x^3)/(1+x^4)^2)-1;

end