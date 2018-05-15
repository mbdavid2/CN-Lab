%% Exercici 2 - dimecres 9 de maig
% *Interpolació polinomial*
%% Dades
x=[0 1 2 4 8]
y=[0 5 10 24 50]
plot(x,y,'*'), title('nodes')
legend('nodes','location','best')
%% Diferències dividides
% *taula diferències dividides*
n=length(x);
a=zeros(n);
a(1:n,1)=y';
for j=1:n-1
   for i=1:n-j
     a(i,j+1)=(a(i+1,j)-a(i,j))/(x(i+j)-x(i));
   end
end
taula=[x',a]
% *polinomi associat a la taula*
% p=a(1,1)+a(1,2)*(x-x(1))+a(1,3)*(x-x(1))*(x-x(2))+...
pol(n)=a(1,1);
for k=2:n
    p=a(1,k)*poly([x(1:k-1)]);
    pol(n-k+1:n)=pol(n-k+1:n)+p;
end
pol  % coeficients polinomi interpolador