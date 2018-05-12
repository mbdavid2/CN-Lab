%% Exercici 1
% *Interpolació Polinomial*

%% Dades
x = [1 2 4 5]
y = [0 2 12 21]
plot(x,y,'*'), title('nodes')
legend('nodes', 'location', 'best')

%% Polinomi interpolador
% *matriu de vandermonde*
A = vander(x)
coefs = A\y'
u = 3
v = polyval(coefs, u)

%% *Polinomi interpolador *
n = length(x);
p = polyfit(x,y,n-1);
coefs = p'

%% Gràfic polinomi
t = 1:0.1:5
v = polyval(coefs,t);
plot(x,y,'*',t,v), title('nodes')
legend('nodes','polinomi','location','best')