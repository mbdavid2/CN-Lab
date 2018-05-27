%% Programa principal
% Gauss-Legendre amb canvi d'interval
%% 
a = 0;
b = 1;
f=@(x)exp(x.^2)
Ie = integral(f,a,b)

%% 
n = 1;
[t, w] = GaussLegendre_2(n);
% canvi de variable %
x = (1+t)/2;
%%%%
GL1 = (w.*f(x))*0.5
Gerror = abs(GL1-Ie)

%% 
n = 2;
[t, w] = GaussLegendre_2(n);
% canvi de variable %
x = (1+t)/2;
%%%%
GL2 = sum(w.*f(x))*0.5
Gerror = abs(GL2-Ie)

%% 
n = 3;
[t, w] = GaussLegendre_2(n);
% canvi de variable %
x = (1+t)/2;
%%%%
GL3 = sum(w.*f(x))*0.5
Gerror = abs(GL3-Ie)

%% 
n = 4;
[t, w] = GaussLegendre_2(n);
% canvi de variable %
x = (1+t)/2;
%%%%
GL4 = sum(w.*f(x))*0.5
Gerror = abs(GL4-Ie)