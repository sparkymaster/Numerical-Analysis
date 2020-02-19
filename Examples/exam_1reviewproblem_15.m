
clear;
clc;

%problem 15 in the review for  exam 1, find the interval [a,b] such that
%f(a) and f(b) have different sign.


dx=0.1;

a=1;
b=1;

k=0;

fprintf('     k     a           b\n');

while rfun1(a)*rfun1(b)>0
     a=a-dx;
     if rfun1(a)*rfun1(b)<0
       fprintf('%6d  %6.2f     %6.2f \n',k,a,b);   
       break;
     end
     b=b+dx;
     if rfun1(a)*rfun1(b)<0
         fprintf('%6d  %6.2f     %6.2f \n',k,a,b); 
         break;
     end
    dx=2*dx;
    k=k+1;
end

