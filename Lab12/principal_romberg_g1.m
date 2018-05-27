%% Programa principal
% Mètode de Romberg
clear, clc
%%
a = 0;
b = 1;
f=@(x)2./(1+x.^2);
Iexacte = pi/2
fprintf('\n');
fprintf('Display Romberg: \n');
% Taula
L = 5;
R = RombergDisp(f,a,b,L) ;
error = abs((R-Iexacte)')

%% Valor extrapolat

tol = 0.5e-8; % 8 decimals correctes
kmax = 10;
fprintf('\n');
[I] = Romberg(f,a,b,tol,kmax)
error = abs(I-Iexacte)

% si s'executa amb kmax = 6 dona warning Maximum trials exceeded with no convergence 
% aixo es pq no ha arribat a la tolerancia amb nomes 6 iteracions,
% augmentar iteracioins

%% d)
a = 0;
b = 1;
f=@(x)1./sqrt(1+x.^4);
Iexacte = integral(f,a,b)
fprintf('\n');
fprintf('Display Romberg: \n');
% Taula
L = 5;
R = RombergDisp(f,a,b,L);
format short g
error = abs((R-Iexacte)')
format long g

%% Valor extrapolat

tol = 0.5e-8; % 8 decimals correctes
kmax = 10;
fprintf('\n');
[I] = Romberg(f,a,b,tol,kmax)
error = abs(I-Iexacte)

%% Exemple teoria (no funciona -> Nan)
a = 0;
b = 0.8;
f=@(x)sin(x)./x; % aixi no funcionara la funcio, l'hem de canviar
Iexacte = integral(f,a,b)
fprintf('\n');
fprintf('Display Romberg: \n');
% Taula
L = 3;
R = RombergDisp(f,a,b,L);
format short g
error = abs((R-Iexacte)')
format long g

%% Valor extrapolat

tol = 0.5e-8; % 8 decimals correctes
kmax = 10;
fprintf('\n');
[I] = Romberg(f,a,b,tol,kmax)
error = abs(I-Iexacte)

%% Exemple teoria Solucionat
a = 0;
b = 0.8;
% Funcio funt a un altre fitxer
% pq te una condicio no es pot escriure aqui directament

% IMPORTANT! El @ s'ha de possar per indicar que es una funcio d'un fitxer
Iexacte = integral(@funt,a,b)
fprintf('\n');
fprintf('Display Romberg: \n');
% Taula
L = 3;
R = RombergDisp(@funt,a,b,L);
format short g
error = abs((R-Iexacte)')
format long g

%% Valor extrapolat

tol = 0.5e-8; % 8 decimals correctes
kmax = 10;
fprintf('\n');
[I] = Romberg(@funt,a,b,tol,kmax)
error = abs(I-Iexacte)