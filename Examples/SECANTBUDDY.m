
clear;


tol=0.0001;

n=1000;

p0=1;

p1=4;

q0=number_7(p0);

q1=number_7(p1);



function y=number_7(x)
    y= x^3-2*x^2-5;
end
j=1;

while j<=n
    p=p1-q1*(p1-p0)/(q1-q0);
    if abs(p-p1)<tol
    fprintf('The number of iterations=%2d, p=%9.4f \n',j,p);
      break;
    end
      j=j+1;
      p0=p1;
      q0=q1;
      
      p1=p;
      q1=number_7(p);
end

if j==n+1
fprintf('The method failed after n interations, n= %2d\n', n);
end
