%% Exercici 4 
% Ajust de corbes
clear all; clc; clf;
x=(0.25:0.25:1.75)';
y=[0.40 0.50 0.90 1.28 1.60 1.66 2.02]';
dades=[x,y]
%% Recta
% $y=a*x+b$
u=ones(size(x));
A=[x,u];
coefr=pinv(A)*y
res_r=norm(A*coefr-y)
%% Polinomi grau 4
A=[x.^4 x.^3 x.^2 x u];
coefp4=pinv(A)*y
res_p4=norm(A*coefp4-y)
%% Corba
% $y=ax^\alpha$
A=[log(x),u];
par=pinv(A)*log(y);
alpha=par(1)
a=exp(par(2))
res_c=norm(a.*x.^(alpha)-y)
%% Gràfica
z=0:0.05:2;
r=polyval(coefr,z);
p4=polyval(coefp4,z);
c=a.*(z.^(alpha));
plot(x,y,'*',z,r,z,p4,z,c)
legend('dades','recta','polinomi4','corba','Location','best')