%% Camp de direccions
format short
clear, clc
%%
f=@(t,y)2.*t;
t = -2:0.2:2; y = -4:0.2:4;
[TT,YY] = meshgrid(t,y);
DT = ones(size(TT));
DY = f(TT,YY);

%% PVI
% dsolve per trobar solucions analitiques
u0 = dsolve('Du=2*t','u(0)=0')
% dsolve('Du=7*u*(1-u)','u(0)=0') aquest per exemple la solucio que passa per 0 es 0

u1 = dsolve('Du=2*t','u(0)=1') % la que passa per 1

[t5,y5] = ode45(f, [-1,1], 0.5);
[t15,y15] = ode45(f, [0,1], 1.5);
[t1,y1] = ode45(f, [0,1], 0.1);
[t2,y2] = ode45(f, [0,1], 1.2);
%taula = [t5,y5]
%% Plot
hold on
quiver(TT,YY,DT,DY)
ezplot(u0,[-2,2]) %dibuixem la solucio tambe
ezplot(u1,[-1,1])
plot(t5,y5,t15,y15,t1,y1,t2,y2) % Hi ha un warning pel 2
plot(t5,y5) % com podem veure la solucio creix i arriba a 1
title('Du = 2t')
hold off
