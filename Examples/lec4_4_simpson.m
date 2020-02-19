clear;
clc;

%Calculating a definite integral int_0^2 e^(x^2)dx by using the Composite
%Simpson's method.

a=0;

b=1;

n=2;

h=(b-a)/n;



s1=funner2(a)+funner2(b);

s2=0; 

s3=0;
  
for j=2:n
    x(j)=a+(j-1)*h;
    if mod(j,2)==0
    s2=s2+funner2(x(j));
    else
        s3=s3+funner2(x(j));
    end
end


s=(s1+4*s2+2*s3)*h/3;
fprintf('The approximation of the integration of  f from x=%2.1f  to %2.1f is %3.5f\n',a, b,s);