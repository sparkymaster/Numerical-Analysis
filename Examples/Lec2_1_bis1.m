
clear;

%bisection method

tol=0.00000001;

N=10000;

a=2;

b=3;

j=1;

while j<=N
    p=(a+b)/2;
    if p-a<tol
       fprintf('The number of iterations j=%2d,  p= %2.8f,  bisect(p)=%2.6f\n',j,p,bisect(p));
      break;
    end
    if bisect(a)*bisect(p)<0
        b=p;
    else
        a=p;
    end
    j=j+1;
end

