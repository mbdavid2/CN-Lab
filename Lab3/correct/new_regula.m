function [ arrel , taula ] = new_regula(f,a,b,tol,M)
%Mètode de la bisecció
%   f: function, a:dada, b:dada, opció f(a)*f(b)<0,
%   epsilon: cota error, M:cota iteracions
k = 0;
tolx=abs(b-a);
tolf=max(abs(f([a,b])));
era=max(tolx,tolf);
taula=[];
while (k<M && era>tol) %abs(b-a) > eps*abs(b)
    c=b-f(b)*(b-a)./(f(b)-f(a));
    fc=f(c);
    tolx=min([abs(c-a),abs(b-c)]);
    taula=[taula;k,a,c,b,fc,tolx];
    if sign(f(b)) == sign(fc)
        b = c;
    else
        a = c;
    end
    k = k + 1;
    era=max(tolx,abs(fc));
end
arrel = c;
disp('            iter        a           c            b         f(x)         |c-a|')
format short g, taula, format
end