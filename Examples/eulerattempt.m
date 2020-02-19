%Set the step size for t
ht = 0.1
nt = 10000;

%initial data
eulerfun0=6;
eulerfun10=18;





%Set initial time for u(1) and t(1)
eulerfun(1)=eulerfun0;
eulerfun1(1)=eulerfun10;
t(1)=0;

%Euler method to solve the system u'=2+u^2*v-4*u, v'=-u^2*v+2*u
for i = 2:nt
t(i)=(i-1)*ht;
u(i)=eulerfun0+ht*(-.1*eulerfun0+.08*eulerfun0*eulerfun10);
v(i)=eulerfun10+ht*(.25*eulerfun10-.08*eulerfun0*eulerfun10);
eulerfun0=u(i);
eulerfun10=v(i)
end




%Graph u in the t-u coordinates
figure(1)
plot(t,u)
xlabel('t-axis');
title('x(t)');

%Graph v in the t-v coordinates
figure(2)
plot(t,v)
xlabel('t-axis');
title('y(t)');


%Graph u and v in the u-v coordinates
figure(3)
plot(u,v)
xlabel('x-axis');
ylabel('y-axis');