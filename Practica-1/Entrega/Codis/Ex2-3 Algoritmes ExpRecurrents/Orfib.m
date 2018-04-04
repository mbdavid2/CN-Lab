%% Calcul nombre d'or
function [ phi ] = Orfib(n)
    phiCorrect = (1 + sqrt(5))/2;
    
    [fn1, fn] = fibonacci(n);
    phi = fn1/fn;
    
    errAbs = abs(phiCorrect-phi);
    errRel = errAbs/phiCorrect*100;
    
    disp([num2str(n), '; ', num2str(phi,'%15.18f'), '; ', num2str(errAbs), '; ', num2str(errRel)]);
end