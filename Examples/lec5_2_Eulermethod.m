clear;

%Use Euler's method to solve y'=f(t,y), with y(0)=\alpha

a=0;

b=1;
h=.2;

N=(b-a)/h;

alpha=.1;





for i=1:N+1

t(i)=a+(i-1)*h;

end

w(1)=alpha;

for j=1:N

w(j+1)=w(j)+h*eulerfun2(t(j),w(j));

end




figure(1)

plot(t,w)% Graph the numerical solution.
xlabel('t-axis');
ylabel('y-axis');
title('y(t)');




for j=1:N+1
fprintf('The numerical solution at t(%d)=%2.2f  is w(%d)= %3.8f\n', j,t(j), j,w(j));%output t_i and w_i,i.e the value of the numerical solution at t_i
end
