%% Exercici 6
% *Interpolació Polinomial*
%% Dades
x = [-4:5]
y = zeros(size(x));
y(4:6)=1;
plot(x,y,'*'), title('nodes')
legend('nodes', 'location', 'best')

% aquest al basic fittin li va be el spline
% interpolant i shape preserving tmb

%% *Polinomi interpolador *
n = length(x);
p = polyfit(x,y,n-1);
coefs = p'