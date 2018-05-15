%% Exercici 3 - dimecres 9 de maig
% *Interpolació polinomial*
%% Dades
x=[0 .1 .4 .5 .6 1.0 1.4 1.5 1.6 1.9 2.0];
y=[0 .06 .17 .19 .21 .26 .29 .29 .30 .31 .31];
plot(x,y,'*'), title('nodes')
legend('nodes','location','best')
%%
%*Polinomi interpolador*
n=length(x);
p=polyfit(x,y,n-1);
coefs=p'
%%
% *canvi d'escala*
m=mean(x)
s=std(x)
z=(x-m)/s;
pz=polyfit(z,y,n-1);
coefs=pz'
t=(0:0.05:2);
vpz=polyval(pz,(t-1)/s);
plot(x,y,'*',t,vpz), title('nodes, canvi escala')
legend('nodes','polinomi','location','best')

