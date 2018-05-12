%% Comportament de l'error
% h minim

f=@(x)log(x);
n=0:14;
h=1./10.^n;
for k=1:15
    % fp(k)=(f(2+h(k))-f(2))/h(k);
    fp(k)=(f(2+h(k))-f(2-h(k)))/(2*h(k)); % amb formula centrada
end
er = abs(fp-0.5);
taula=[h; fp; er]'

%% gràfic
aux = log(2*er)
plot(n, aux, '+')                