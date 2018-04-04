function [ arrel , taula, logs ] = new_bisec(f,a,b,tol,M,valorCorrecte)
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
xprev = (a + b)/2;
logs = [];
while (k<M && era>tol && sisDecimals < errAbs) %abs(b-a) > eps*abs(b)
    x = (a + b)/2;
    taula=[taula;k,a,x,b,f(x),tolx];
    if sign(f(x)) == sign(f(b))
        b = x;
    else
        a = x;
    end
    k = k + 1;
    tolx=abs(b-a)/2;
    tolf=max(abs(f(x)));
    era=max(tolx,tolf);
    errAbs = abs(x-valorCorrecte);
    logs = [logs, log(abs((x - xprev)/x))];
    xprev = x;
end
arrel = x;
disp('            iter      a     x     b      f(x)      |b-a|')
format short g, disp(taula), format
end