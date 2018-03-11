function [ arrel , taula ] = new_new(f,df,x0,tol,M)
%Mètode de Newton o de la tangent
%   f: function, df:derivada funció, x0:dada,
%   tol: cota error, M:cota iteracions
k = 0; x=x0;
tolx=abs(x);
tolf=(abs(f(x)));
era=max(tolx,tolf);
taula=[k,x,f(x),tolx];
while (k<M && era>tol) %abs(b-a) > eps*abs(b)
    y=f(x); z=df(x); s=y/z;
    x = x-s;
    k = k + 1;
    tolx=abs(s);
    tolf=max(abs(f(x)));
    era=max(tolx,tolf);
    taula=[taula;k,x,f(x),tolx];   
end
arrel = x;
disp('            iter           x           f(x)      |b-a|')
format short g, taula, format
end
           