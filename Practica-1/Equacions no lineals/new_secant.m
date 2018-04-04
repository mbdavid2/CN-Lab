function [ arrel , taula, logs ] = new_secant(f,a,b,tol,M, valorCorrecte)
%Mètode de la bisecció
%   f: function, a:dada, b:dada, opció f(a)*f(b)<0,
%   epsilon: cota error, M:cota iteracions
k = 0;
tolx=abs(b-a);
tolf=max(abs(f([a,b])));
era=max(tolx,tolf);
taula=[];
sisDecimals = 0.0000005;
errAbs = 1;
xprev = b
logs = [];
while (k<M && era>tol && sisDecimals < errAbs) %abs(b-a) > eps*abs(b)
    c = a;
    a = b;
    b = b + (b - c)/(f(c)/f(b)-1);
    k = k + 1;
    
    tolx=abs(b-a);
    tolf=max(abs(f(b)));
    era=max(tolx,tolf);
    taula=[taula;k,a,c,b,f(b),tolx];
    errAbs = abs(b-valorCorrecte);
    
    x = b
    xprev = a
    logs = [logs, log(abs((x - xprev)/x))];
end
arrel = b;
disp('            iter         a            c           x         f(x)       |b-a|')
format short g, taula, format
end