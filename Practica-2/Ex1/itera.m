function [ x, residu, iteracions ] = itera( A, b, B, c, kMax, tol)
% Bucle de càlcul d'iteracions
    k = 0;
    x = zeros(size(b)); % També es podria fer x = c
    residu = norm(b-A*x);
    while(k < kMax && residu >= tol)
        aux = B*x+c;
        x = aux;
        k = k+1;
        residu = norm(b-A*x);
    end
    iteracions = k;
end

