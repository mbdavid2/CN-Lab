%% Ex 2 M�tode de la pot�ncia per trobar valor propi
clear,clc
format long
%% Valor propi de modul m�xim/minim
for i = 1:1
    n = 3;
    [B, pos] = generate_wilkinson_matrices(n)
    if (i == 1) 
        A = B;
    else
        A = inv(B);
    end
    
    x0 = [1; 0; 1; 0; 1; 0; 1]; 
    currentX = x0; iterm = 30;
    iter = 1; 
    tol = 0.0000005;
    error = 1;
    prevM = 0;
    taula(iter,:) = [0,currentX'];
    while(iter < iterm && error > tol)
        currentZ = A*currentX;
        m = norm(currentZ, 'inf'); % mk+1 candidat a valor propi
        nextX = currentZ/m;
        %error = norm(nextX - currentX, 'inf');
        error = abs(prevM - m);
        currentX = nextX;
        prevM = m;
        %x = xn/m; % xk+1 candidat a vector propi
        iter = iter+1;
        if (i == 1) 
            taula(iter,:) = [m,currentX'];
        else
            taula(iter,:) = [1/m,currentX'];
        end
        
    end
    vep = nextX
    if (i == 1) 
        vap_max = m
        % Rayleigh
        %prova = A*vep-vap_max*vep;
       % prova = (A*vep)/(vep*vep);
    else
        vap_min = 1/m
    end

    

%disp(taula);
iter
error
end