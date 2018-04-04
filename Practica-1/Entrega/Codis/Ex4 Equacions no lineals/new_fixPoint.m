function [ arrel, x_sol, logs ] = new_fixPoint(f, g, x, tol, N)
% f: equation
% g: iterative functon
% x = initial point
% tol: tol error
% N = number of iterations
    k = 0;
    tolx = 1; 
    tolf=abs(f(x)); 
    err=max(tolx,tolf);
    x_sol = [k, x, f(x), 0]; %Per la taula de la pagina 16: Lab4-Tema2.pdf
    logs = [];
    while (err > tol && k < N)
       xprev = x;
       x = g(x);
       k = k + 1;
       tolx=abs(x - xprev);
       tolf=abs(f(x));
       err=max(tolx,tolf);
       x_sol = [x_sol; k, x, f(x), x-xprev];
       logs = [logs, log(abs((x - xprev)/x))];
    end
    arrel = x;
    disp('            iter           x           f(x)      xn - xn-1')
    format long, x_sol, format
end

