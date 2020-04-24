clear all;
close all;
clc;

nmax=10;
%a=[3,-1,1;3,6,2;3,3,7]

a=[1,-1,-1;-3,6,-2;-3,-3,7]

n=size(a,1);


% size mi rida un vettore con le dimensionalità della matrice
b=[1;0;4];

linsolve(a,b)


% linsolve usa fattorizzazione lu con pivoting parziale se la matrice è quadrata e qr se la matrice è rettangolarex=[0,0,0];

xold=x;

for k=1:nmax

xold=x;
for 
i=1:
n
sum=0;

for j=1:i-1
sum=sum+a(i,j)*xold(j);

end

for j=i+1:n
sum=sum+a(i,j)*xold(j);

end

x(i)=(b(i)-sum)/a(i,i);

end

end

d=zeros(n);

for i=1:
n

d(i,i)=a(i,i);

end
r=a-d;

d;
inv(d)

t=-inv(d)*r
eig(t)