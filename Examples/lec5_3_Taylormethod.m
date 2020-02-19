clear;

%Use Taylor's method to solve y'=f(t,y), with y(0)=\alpha

a=0;

b=1;

h=.1;

alpha=1;

N=(b-a)/h;




for i=1:N+1

t(i)=a+(i-1)*h;

end

w(1)=alpha;

for i=1:N
w(i+1)=w(i)+h*[t(i)*exp(-t(i)*w(i))+h/2*[-t(i)^3*exp(-2*t(i)*w(i))-w(i)*t(i)*exp(-t(i)*w(i))+exp(-t(i)*w(i))]];
end




figure(1)

plot(t,w)% Graph the numerical solution.




for j=1:N+1
fprintf('The numerical solution at t(%d)=%2.2f  is w(%d)= %3.8f\n', j,t(j), j,w(j));%output t_i and w_i,i.e the value of the numerical solution at t_i
end
