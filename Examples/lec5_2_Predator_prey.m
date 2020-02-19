clear;

%Use Euler's method to solve y'=f(t,y), with y(0)=\alpha

a=.1;

b=.08;

c=.25;

d=.08

N=10000;

alpha=6;
beta=18;

h=.01;
% k=(d-c)/N;


w(1)=alpha;
v(1)=beta;




for j=1:N
t(j+1)= h*j;
w(j+1)=w(j)+h*eulerfun(w(j),v(j));
v(j+1)=v(j)+h*eulerfun1(w(j),v(j));
alpha=w(j);
beta=v(j);

end




figure(1)

plot(t,w)% Graph the numerical solution.
xlabel('t-axis');
ylabel('x-axis');
title('x(t) against t');

figure(2)

plot(t,v)% Graph the numerical solution.
xlabel('t-axis');
ylabel('y-axis');
title('y(t) against t');

figure (3)

plot(w,v)% Graph the numerical solution.
xlabel('x-axis');
ylabel('y-axis');
title('y(t) against x(t)');




for j=1:N+1
fprintf('The numerical solution at v(%d)=%2.2f  is w(%d)= %3.8f\n', j,v(j), j,w(j));%output t_i and w_i,i.e the value of the numerical solution at t_i
end
