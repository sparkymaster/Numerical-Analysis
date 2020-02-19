clear;

%Use Runge-Kutta-Fehlberg method  to solve y'=f(t,y), with y(0)=\alpha

a=1;

b=1.2;

tol=0.0001;

alpha=1;

hmax=0.05;

hmin=0.02;






t=a;

w=alpha;

y(1)=alpha;

h=hmax;

z(1)=hmax;

x(1)=a;
r(1)=0;

flag=1;

i=1;


while flag==1
    K1=h*rkfun3(t,w);
    K2=h*rkfun3(t+h/4,w+K1/4);
    K3=h*rkfun3(t+3*h/8,w+3/(32)*K1+9/(32)*K2);
    K4=h*rkfun3(t+12/(13)*h,w+1932/(2197)*K1-7200/(2197)*K2+7296/(2197)*K3);
    K5=h*rkfun3(t+h,w+439/(216)*K1-8*K2+3680/(513)*K3-845/(4104)*K4);
    K6=h*rkfun3(t+1/2*h,w-8/(27)*K1+2*K2-3544/(2565)*K3+1859/(4104)*K4-11/(40)*K5);
    R=1/h*abs(1/(360)*K1-128/(4275)*K3-2197/(75240)*K4+1/(50)*K5+2/(55)*K6);
    if R<=tol
        t=t+h;
        w=w+25/(216)*K1+1408/(2565)*K3+2197/(4104)*K4-K5/5;
        r(i+1)=R;
        x(i+1)=t;
        y(i+1)=w;
        z(i+1)=h;
        i=i+1;
    end
     
    
    delta=0.84*(tol/R)^(0.25);
    
    if delta<=0.1 
        h=0.1*h;
    elseif delta>=4
        h=4*h;
    else
        h=delta*h;
    end
    
    if h>hmax
        h=hmax;
    end
    if t>=b
        flag=0;
    elseif t+h>b
        h=b-t;
    elseif h<hmin
        flag=0;
        fprintf('minimum h exceeded');
        break;
    end
        
end





i


plot(x,y)% Graph the numerical solution.



for j=1:i
    g(j)=(1/5*(.2093900)*3*exp(3*x(j))-1/25*exp(3*x(j))+1/25*exp(-2*x(j)));
end


fprintf( ' ti            Exact         wi             hi       |yi-wi|\n')

for j=1:i
fprintf(' %1.7f   %3.7f   %3.7f       %3.7f  %3.7f \n', x(j), g(j), y(j), z(j),  abs(y(j)-g(j)));%output t_i and w_i,i.e the value of the numerical solution at t_i
end