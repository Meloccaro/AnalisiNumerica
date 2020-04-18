close all;

clear all;
clc;

x0=0.5;

x1=1.0;

h=x1-x0;

s=0.5*(f(x0)+f(x1))*(x1-x0);

esatto=ff(x1)-ff(x0);


errteorico=h^3*fdd(x1)/12.;

fprintf("%f\t%f\t%f\t%f\n", s, esatto, s-esatto, errteorico);
npts=101;
xx=linspace(x0,x1,npts);
yy=f(xx);
y1=flin(xx,x0,x1);
plot(xx,yy);

hold on

plot(xx,y1);
function y=f(x)
 
   y=x.^4;

end
f
unction y=ff(x)
 
   y=x^5/5.;
end
f
unction y=fdd(x)

    y=12*x^2;

end

function y=flin(x,x1,x2)
 
  y=f(x1)+(f(x2)-f(x1))*(x-x1)/(x2-x1);
end