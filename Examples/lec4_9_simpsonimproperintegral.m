clear;
clc;
%Approximating an improper  integral int_0^1G(x)dx by using the Composite Simpson's method

a=-1;

b=0;

n=8;

h=(b-a)/n;



s1=0+gfun(b);

s2=0; 

s3=0;
  
for j=2:n
    x(j)=a+(j-1)*h;
    if mod(j,2)==0
    s2=s2+gfun(x(j));
    else
        s3=s3+gfun(x(j));
    end
end


s=(s1+4*s2+2*s3)*h/3;
fprintf('The approximation of the integration of  G from x=%1.0f  to %1.0f is %3.8f\n',a, b,s);