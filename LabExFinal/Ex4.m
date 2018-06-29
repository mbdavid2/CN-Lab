%% Aproximació dades
clear, clc;

%% Dades
x = 1:12;
any = [1960 1965 1970 1980 1985 1990 1995 2000 2005 2010 2015];
SVK = [69.9 70.6 70.1 70.2 70.4 70.7 70.9 72.3 73.1 73.9 75.1 77.2];
plot(x,SVK,'--'), title('Esperança de vida')
legend('SVK', 'location', 'best')

%% b
n = length(x);
p = polyfit(x,SVK,n-1);
coefs = p';

% Gràfic polinomi
t = 1:0.1:12; 
v = polyval(coefs,t);
plot(x,SVK,'*',t,v), title('Interpolació')
legend('nodes','polinomi','location','best')

% 1963
newX = (1963 - 1960)/5 + 1;
any1963 = v(newX*10)
err1963 = abs(any1963 - 70.6) 

% 1998
newX = (1998 - 1960)/5 + 1;
any1998 = v(newX*10)
err1998 = abs(any1998 - 72.5) 

%% c
n = length(x);
p = polyfit(x,SVK,2);
coefs = p';

% Gràfic polinomi
t = 1:0.1:12; 
v = polyval(coefs,t);
plot(x,SVK,'*',t,v), title('Interpolació')
legend('nodes','polinomi','location','best')

% 1963
newX = (1963 - 1960)/5 + 1;
any1963 = v(newX*10)
err1963 = abs(any1963 - 70.6) 

% 1998
newX = (1998 - 1960)/5 + 1;
any1998 = v(newX*10)
err1998 = abs(any1998 - 72.5) 

%% d Splines
% n = length(x);
% p = polyfit(x,SVK,n-1);
% coefs = p';
% 
% % Gràfic polinomi
% t = 1:0.1:12; 
% v = polyval(coefs,t);
% plot(x,SVK,'*',t,v), title('Interpolació')
% legend('nodes','polinomi','location','best')

z = 1:0.1:12;
sz = spline(x,SVK,z);
plot(x,SVK,'*',z,sz)

% 1963
newX = (1963 - 1960)/5 + 1;
any1963 = sz(newX*10)
err1963 = abs(any1963 - 70.6) 

% 1998
newX = (1998 - 1960)/5 + 1;
any1998 = sz(newX*10)
err1998 = abs(any1998 - 72.5) 