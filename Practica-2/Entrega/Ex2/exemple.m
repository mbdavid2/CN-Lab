%% Ex 2 Mètode de la potència per trobar valor propi
%% Valor propi de modul màxim/minim
clear,clc
format long
for i = 1:1
    n = 3;
    A = [1.8 0.8; 0.2 1.2]
    
    x0 = [1;1]; 
    currentX = x0; iterm = 25;
    nextX = x0;
    iter = 1; 
    tol = 0.0000005;
    error = 1;
    taula(iter,:) = [0,currentX'];
    while(iter < iterm && error > tol)
        currentX = nextX;
        currentZ = A*currentX;
        lambdaVAP = norm(currentZ, 'inf'); % mk+1 candidat a valor propi
        nextX = currentZ/lambdaVAP;
        error = norm(nextX-currentX,'inf');
%         rayleigh = A*nextX-lambdaVAP*nextX;
%         error = max(rayleigh);
%         I = eye(size(A));
%         error = det(A - lambdaVAP*I)
        iter = iter+1;
        if (i == 1) 
            taula(iter,:) = [lambdaVAP,currentX'];
        else
            taula(iter,:) = [1/lambdaVAP,currentX'];
        end
        
    end
    vep = nextX
    if (i == 1) 
        vap_max = lambdaVAP
        % Rayleigh
        % prova = A*vep-vap_max*vep;
        % prova = (A*vep)/(vep*vep);
    else
        vap_min = 1/lambdaVAP
    end

    

%disp(taula);
iter
error;
end