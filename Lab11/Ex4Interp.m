%% Exercici 4 pdf teoria
%% Interpolacio INVERSA 
% li dona la volta a la taula
diary exercici4.txt
format short g
t = 0.5:0.5:5;

x = [0.5,0.55,0.6];
y = exp(-x)-x;
p = polyfit(y, x,2);
alpha  = polyval(p,0);
alpha-exp(-alpha)
disp(y)



%% polinomi interpolador 
pp = polyfit(x,y,2)

%% Arrel
zero = polyval(pp,0)

%% Comprovació
prova = exp(-zero)-zero