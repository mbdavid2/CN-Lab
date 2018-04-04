function [ arrel , taula, logs ] = new_new(f,df,x0,tol,M,valorCorrecte)
%Mètode de Newton o de la tangent
%   f: function, df:derivada funció, x0:dada,
%   tol: cota error, M:cota iteracions
k=0; 
xprev = x0;
tolx=abs(xprev);
tolf=(abs(f(xprev)));
era=max(tolx,tolf);
taula=[k,xprev,f(xprev),tolx];
sisDecimals = 0.0000005;
errAbs = 1;
logs = [];
while (k < M && era > tol && sisDecimals < errAbs) %abs(b-a) > eps*abs(b)
    y = f(xprev); z=df(xprev); s=y/z;
    x = xprev-s;
    k = k + 1;
    tolx=abs(s);
    tolf=max(abs(f(x)));
    era=max(tolx,tolf);
    taula=[taula;k,x,f(x),tolx];   
    errAbs = abs(x-valorCorrecte);
    logs = [logs, log(abs((x - xprev)/x))];
    xprev = x;
end
arrel = x;
disp('            iter           x           f(x)      |b-a|')
format long, taula, format
end
           