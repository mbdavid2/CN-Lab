function [ arrel , taula ] = new_bisec(f,a,b,tol,M)
%Mètode de la bisecció
%   f: function, a:dada, b:dada, opció f(a)*f(b)<0,
%   epsilon: cota error, M:cota iteracions
k = 0;
tolx=abs(b-a);
tolf=max(abs(f([a,b])));
era=max(tolx,tolf);
taula=[];
while (k<M && era>tol) %abs(b-a) > eps*abs(b)
    x = (a + b)/2;
    taula=[taula;k,a,x,b,f(x),tolx];
    if sign(f(x)) == sign(f(b))
        b = x;
    else
        a = x;
    end
    k = k + 1;
    tolx=abs(b-a);
    tolf=max(abs(f(x)));
    era=max(tolx,tolf);
end
arrel = x;
disp('            iter      a     x     b      f(x)      |b-a|')
format short g, taula, format
end