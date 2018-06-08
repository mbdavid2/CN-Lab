%% Exercici 3
% població de bacteris
%%
x=[0:6]';
y=[32 47 65 92 132 190 275]';
dades=[x,y]
%% Corba exponencial
% $y = ab^x$ 
Y=log(y);
u=ones(size(x));
M=[u,x];
%%
Z=pinv(M)*Y;  %A=Z(1),B=Z(2)
z=exp(Z); 
a=z(1), b=z(2)
%% Bacteris a les 7 hores
y7=floor(a*(b^7))
%% Gràfic dades
t=0:0.2:7;
T=floor(a.*(b.^t));
plot(x,y,'*',7,y7,'g*',t,T)
title('bacteris per unitat de volum')
xlabel('hores')
ylabel('nº bacteris')