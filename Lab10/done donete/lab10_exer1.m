%% Exercici 1 - dimecres 9 de maig
% *Interpolació polinomial*
%% Dades
x=[1 2 4 5]
y=[0 2 12 21]
plot(x,y,'*'), title('nodes')
legend('nodes','location','best')
%% Polinomi interpolador
% *matriu de vandermonde*
A=vander(x)
coefs=A\y'
u=3
v=polyval(coefs,u)
%%
% *polyfit*
n=length(x);
coefs=polyfit(x,y,n-1)
%% gràfic polinomi
t=1:0.1:5;
v=polyval(coefs,t );
plot(x,y,'*',t,v), title('nodes')
legend('nodes','polinomi','location','best')
