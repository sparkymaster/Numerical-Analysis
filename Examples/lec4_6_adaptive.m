
clear;
clc;

%Adaptive quadrature method


%Input  a, b, tol, N

a=0;

b=pi;

N=1000000000;


tol=0.00001;


AP=0;

i=1;

a(i)=a;

tol(i)=10*tol; %10*tol<15*tol. Choose it conservatively to compensate
%for error in the assumption $f^(4)(\xi)=f^(4)(\xi1)

h(i)=(b-a)/2;

FA(i)=prob4_6(a);

FC(i)=prob4_6(a+h(i));

FB(i)=prob4_6(b);


S(i)=h(i)*(FA(i)+4*FC(i)+FB(i))/3;% Approximation from Simpson's method for entire interval


L(i)=1;

z=0;

while i>0
    
    FD=prob4_6(a(i)+h(i)/2);
    FE=prob4_6(a(i)+3*h(i)/2);
    S1=h(i)*(FA(i)+4*FD+FC(i))/6;% Approximation from Simpson's method for halves of subintervals

    
    
    S2=h(i)*(FC(i)+4*FE+FB(i))/6;% Approximation from Simpson's method for halves of subintervals

    
    v1=a(i);%Save data at this level
    
    v2=FA(i);
    
    v3=FC(i);
    
    v4=FB(i);
    
    v5=h(i);
    
    v6=tol(i);
    
    v7=S(i);
    
    v8=L(i);
    
    i=i-1;
    
    if abs(S1+S2-v7)<v6
        AP=AP+(S1+S2);
    else
        if v8>=N
            fprintf('Level exceeded\n');
            break;
        else
            i=i+1;%Data for right half subinterval
            
            a(i)=v1+v5;
            
            FA(i)=v3;
            
            FC(i)=FE;
            
            FB(i)=v4;
            
            h(i)=v5/2;
            
            %fprintf('size of  right half subinterval=%3.4f\n', h(i));
            
            tol(i)=v6/2;
            
            S(i)=S2;
            
            L(i)=v8+1;
            
            i=i+1;%Data for left half subinterval
            
            a(i)=v1;
            
            FA(i)=v2;
            
            
            FC(i)=FD;
            
            FB(i)=v3;
            
            h(i)=h(i-1);
            %fprintf('size of left half subinterval=%3.4f\n', h(i))
            
            tol(i)=tol(i-1);
            
            S(i)=S1;
            
            L(i)=L(i-1);
            
        end
        
    end
    
    z=z+1;
  end


            
   fprintf('The approximation value  of the integral is %3.7f\n', AP); 
   
 