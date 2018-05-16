%% Velocitat i acceleració
% record mundial U. Bolt

% NOU Lab11!
% Spline per unir els punts

clear, clc

%% Dades
r = 0:10:100;
t = [0,1.85,2.89,3.78,4.64,5.49,6.31,7.11,7.92,8.74,9.58];
dades = [r;t]'

% Spline per unir els punts
z = 0:100;
sr = spline(r,t,z);
%%%%%

subplot(3,1,1), plot(r,t,'*',z,sr),title('Posicions')
xlabel('m'), ylabel('s'), 

%% Velocitat
%v=diff(r)./diff(t);
%Com calcularia la vel de la posiucio 11?:
%v(11) = (r(11)-r(10))/(t(11)-t(10));


% Bucle per calcular enlloc de diff
v(1) = 0;
for i=2:11
    v(i) = (r(i)-r(i-1))/(t(i)-t(i-1));
end
% Spline per unir els punts
z = 0:100;
sv = spline(r,v,z);
%%%%%

subplot(3,1,2), plot(r,v,'r*',z,sv),title('Velocitat')
xlabel('m'), ylabel('m/s'), 

%% Acceleracio
% a=diff(v)./diff(t);
% %Com calcularia la vel de la posiucio 11?:
% a(11) = (v(11)-v(10))/(t(11)-t(10));



% Bucle per calcular enlloc de diff
a(1) = 0;
for i=2:11
    a(i) = (v(i)-v(i-1))/(t(i)-t(i-1));
end
% Spline per unir els punts
z = 0:100;
sa = spline(r,a,z);
%%%%%
subplot(3,1,3), plot(r,a,'*',z,sa),title('Acceleracio')
xlabel('m'), ylabel('m/s^2'), 

 