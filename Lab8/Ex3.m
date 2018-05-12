%% Exercici 2 - lab S9
% Sistema sobredeterminat
%% Dades
clear; clc;
x = [0:6]';
y = [32 47 65 92 132 190 275];
dades=[x,y]

%% Sistema lineal
%  $y = ab^x$
Y = log(y)
u = ones(size(x))
A = [x,u]

%% 
% Sobredeterminat?
rA = rank(A), rAb = rank([A,b])

%% Matriu Pseudoinversa de Moore-Penrouse
coeficient_recta = pinv(A)*b

%%
% parametres model --> a,b
z = exp(sol);
b = z(1), a = z(2);
YY = a*b.^x;
residu = norm(y-YY)

%% nº bacteris a les 7 hores
v = floor(a*b^7)

%% Gràfic
t = 0:0.1:7
z = a*b.^t;
plot(x,y,'*',t,z, 7,v,'g')
legend('dades', 'ab^x', 'Location','best')
title('nº bacteris per unitat de volum')
xlabel('hores')