clear;

%Use Runge-Kutta method of order three(Heun's) to solve y'=f(t,y), with y(0)=\alpha

a=0;

b=2;

N=10;

alpha=0.1;

h=(b-a)/N;




for i=1:N+1

t(i)=a+(i-1)*h;

end

w(1)=alpha;

for i=1:N
    K1=h*rkfun(t(i),w(i));
    K2=h*rkfun(t(i)+h/3,w(i)+K1/3);
    K3=h*rkfun(t(i)+2*h/3, w(i)+2/3*K2);
    w(i+1)=w(i)+1/4*(K1+3*K3);

end




figure(1)

plot(t,w)% Graph the numerical solution.




for j=1:N+1
fprintf('The numerical solution at t(%d)=%2.2f  is w(%d)= %3.8f\n', j,t(j), j,w(j));%output t_i and w_i,i.e the value of the numerical solution at t_i
end
