%% Ex 2 Mètode de la potència per trobar valor propi
%% Valor propi de modul màxim/minim
clear,clc
format long
for i = 1:1
    n = 3;
    [B, pos] = generate_wilkinson_matrices(n);
    if (i == 1) 
        A = B
    else
        A = inv(B)
    end
    norma2 = norm(A,2); % Com A es simetrica, la norma 2 es igual al radi espectral, es a dir, el maxim dels valors propis de la matriu, que es el que busquem
    x0 = [1; 1; 1; 1; 1; 1; 1]; 
    currentX = x0; iterm = 100;
    iter = 1; 
    tol = 0.0000005;
    error = 1;
    prevM = 0;
    taula(iter,:) = [0,error];
    while(iter < iterm && error > tol)
        currentZ = A*currentX;
        lambdaVAP = norm(currentZ, 'inf'); % mk+1 candidat a valor propi
        nextX = currentZ/lambdaVAP;
%         rayleigh = A*nextX-lambdaVAP*nextX;
%         error = max(rayleigh);
%         I = eye(size(A));
        error = abs(norma2 - lambdaVAP);
        currentX = nextX;
        prevM = lambdaVAP;
        iter = iter+1;
        if (i == 1) 
            taula(iter,:) = [lambdaVAP,error];
        else
            taula(iter,:) = [1/lambdaVAP,error];
        end
        
    end
    vep = nextX;
    if (i == 1) 
        vap_max = lambdaVAP
        % Rayleigh
        % prova = A*vep-vap_max*vep;
        % prova = (A*vep)/(vep*vep);
    else
        vap_min = 1/lambdaVAP
    end

    

disp(taula);
iter
error
end