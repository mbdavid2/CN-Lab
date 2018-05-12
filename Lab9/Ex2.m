%% Exercici 2 - Derivacio Numerica
%
%% Dades
x = [0.3:0.05:0.5];
y = [1.608049 1.622528 1.640000 1.660886 1.685750];
dades = [x;y]' % El ' es "transposat" :/


%% K'(0.4) centrada
h = x(2) - x(1);
yp = (y(3) - y(1))/(2*h)

%% K''(0.4) centrada
ypp = (y(3) - 2*y(2)+y(1))/h^2

%% K'''(0.4) centrada
yppp = (y(5)-2*y(4) +2*y(2)-y(1))/h^2