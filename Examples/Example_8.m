clear;
n=1000000;
sum=0;
tol=.0001;
j=1;
while j<=n
sum=sum+6/j^2;
if abs(sum-pi^2)<tol;
   fprintf('The number of iterations j=%2d, sum=%5.6f, square root of the sum=%6.4f \n',j,sum,sqrt(sum));
    break;
end
j=j+1;
end