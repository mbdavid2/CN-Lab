function [ arrel , taula ] = new_secant(f,a,b,tol,M)
%Mètode de la bisecció
%   f: function, a:dada, b:dada, opció f(a)*f(b)<0,
%   epsilon: cota error, M:cota iteracions
k = 0;
tolx=abs(b-a);
tolf=max(abs(f([a,b])));
era=max(tolx,tolf);
taula=[k,b,f(b),tolx];
while (k<M && era>tol) %abs(b-a) > eps*abs(b)
    c = a;
    a = b;
    b = b + (b - c)/(f(c)/f(b)-1);
    k = k + 1;
    tolx=abs(b-a);
    tolf=max(abs(f(b)));
    era=max(tolx,tolf);
    taula=[taula;k,b,f(b),tolx];
end
arrel = b;
disp('            iter         x         f(x)       |b-a|')
format short g, taula, format
end