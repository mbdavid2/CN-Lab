%% Exercici 3 - dimecres 9 de maig
% *Interpolació polinomial*
%% Dades
x=[-4:5];
y=zeros(size(x));
y(4:6)=1;
plot(x,y,'*'), title('nodes')
legend('nodes','location','best')
%%
%*Polinomi interpolador*
n=length(x);
p=polyfit(x,y,n-1);
coefs=p'