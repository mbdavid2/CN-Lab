function [ arrel ] = new_new( f,df,x,tol,N )
% mètode de Newton
%   Detailed explanation goes here
k = 0;
tolx = 1; tolf=abs(f(x)); err=max(tolx,tolf);
while (err >tol && k < N)
   xprev = x;
   x = x - f(x)/df(x)
   k = k + 1
   tolx=abs(x - xprev);
   tolf=abs(f(x));
   err=max(tolx,tolf);
end
arrel = x;
end

