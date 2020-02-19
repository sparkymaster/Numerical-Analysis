
clear;

%Newton's  method, use f'(x).

tol=0.00000001;

n=10000;

p0=2;





j=1;

while j<=n
    p=p0-num5(p0)/num5a(p0);
    if abs(p-p0)<tol
    fprintf('The number of iterations=%2d, p=%9.8f \n',j,p);
      break;
    end
      j=j+1;
      p0=p;
end

if j==n+1
fprintf('The method failed after n interations, n= %2d\n', n);
end
