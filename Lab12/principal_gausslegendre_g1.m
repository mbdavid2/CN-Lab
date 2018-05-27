%% Programa principal
% Gauss-Legendre

%% 
a = -1;
b = 1;
f=@(x)exp(x)
Ie = f(b)-f(a)

%% 
n = 1;
[x, w] = GaussLegendre_2(n)
GL1 = (w.*f(x))
Gerror = abs(GL1-Ie)

%% 
n = 2;
[x, w] = GaussLegendre_2(n)
GL2 = sum(w.*f(x))
Gerror = abs(GL2-Ie)

%% 
n = 3;
[x, w] = GaussLegendre_2(n)
GL3 = sum(w.*f(x))
Gerror = abs(GL3-Ie)

%% 
n = 4;
[x, w] = GaussLegendre_2(n)
GL4 = sum(w.*f(x))
Gerror = abs(GL4-Ie)