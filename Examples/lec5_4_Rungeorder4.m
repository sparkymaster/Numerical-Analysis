clear;

%Use Runge-Kutta method of order four  to solve y'=f(t,y), with y(0)=\alpha

a=1;

b=3;

N=10;

alpha=-2;

h=(b-a)/N;




for i=1:N+1

t(i)=a+(i-1)*h;

end

w(1)=alpha;

for i=1:N
    K1=h*rkfun4test(t(i),w(i));
    K2=h*rkfun4test(t(i)+h/2,w(i)+K1/2);
    K3=h*rkfun4test(t(i)+h/2,w(i)+K2/2);
    K4=h*rkfun4test(t(i)+h,w(i)+K3);
w(i+1)=w(i)+(K1+2*K2+2*K3+K4)/6;

end




figure(1)

plot(t,w)% Graph the numerical solution.




for j=1:N+1
fprintf('The numerical solution at t(%d)=%2.2f  is w(%d)= %3.8f\n', j,t(j), j,w(j));%output t_i and w_i,i.e the value of the numerical solution at t_i
end
