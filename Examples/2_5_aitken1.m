
clear;
clc;
%Aitken's  method.

n=7;
fprintf('\n     j       p_j    \n')


q0=.5;
for i=1:n
    a(i)=(2-exp(q0)+(q0)^2)/3;
    q0=a(i);
      fprintf('%6d  %6.9f\n',i,a(i));
end



fprintf('\n     j       hat(p_j)    \n')



for j=1:n-2
    b(j)=a(j)-(a(j+1)-a(j))^2/(a(j+2)-2*a(j+1)+a(j));
     fprintf('%6d  %6.9f\n',j,b(j));
end

