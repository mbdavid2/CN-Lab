%% Exercici 1 - Derivacio Numerica
%
%% Dades
x = [0.1,0.2,0.3]
y = [1.2751 1.4778 1.7149]

%% Derivada primera centrada
h = x(2) - x(1);
yp = (y(3) - y(1))/(2*h)

%% Derivada segona centrada
ypp = (y(3) - 2*y(2)+y(1))/h^2

