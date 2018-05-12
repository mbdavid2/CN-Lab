%% Velocitat i acceleració
% record mundial U. Bolt
clear, clc

%% Dades
r = 0:10:100;
t = [0,1.85,2.89,3.78,4.64,5.49,6.31,7.11,7.92,8.74,9.58];

dades = [r;t]'
plot(r,t)
subplot(3,1,1), plot(r,t,'*'),title('Posicions')

%% Velocitat
v=diff(r)./diff(t);
%Com calcularia la vel de la posiucio 11?:
v(11) = (r(11)-r(10))/(t(11)-t(10));
subplot(3,1,2), plot(r,v,'r*'),title('Velocitat')

%% Acceleracio
a=diff(v)./diff(t);
%Com calcularia la vel de la posiucio 11?:
a(11) = (v(11)-v(10))/(t(11)-t(10));
subplot(3,1,3), plot(r,a,'*'),title('Acceleracio')
 