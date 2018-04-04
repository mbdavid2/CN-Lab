%% Calcul nombre d'or
function [ phi ] = Orfract(n)
    phi = '1';
    for k = 1:n
        phi = ['1+1/(' phi ')'];
    end
    
    phi = 1;
    q = 1;
    for k = 1:n
        s = phi;
        phi = phi + q;
        q = s;
    end
    phi = sprintf('%d/%d',phi,q);
    phi = eval(phi);
    
    phiCorrect = (1 + sqrt(5))/2;
    
    errAbs = abs(phiCorrect-phi);
    errRel = errAbs/phiCorrect*100;
    disp([num2str(n), '; ', num2str(phi,'%15.18f'), '; ', num2str(errAbs), '; ', num2str(errRel)]);
end