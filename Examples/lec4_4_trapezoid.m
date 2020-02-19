clear;
clc;

%Calculating a definite integral int_0^1 e^(x^2)dx by using the Composit
%Trapezoid method.

a=0;

b=2;

n=100;

h=(b-a)/(n+2);


 s0=intf(a)+intf(b);  
 s1=0;


  
for j=1:n+3
     x(j)=a+(j-1)*h;
    if(i<(n+2)/2)
     s1=s1+ intf(x(j));
    end
end
s=2*h*s1;

fprintf('The approximation of the integration of  f from x=%2.1f  to %2.1f is %3.5f\n',a, b,s);