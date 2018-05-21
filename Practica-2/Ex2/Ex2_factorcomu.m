%% Ex 2 Mètode de la potència per trobar valor propi
clear,clc
format long
%% Valor propi de modul màxim/minim
for i = 1:1
    n = 3;
    [B, pos] = generate_wilkinson_matrices(n)
    if (i == 1) 
        A = B;
    else
        A = inv(B);
    end
    
    x0 = [1; 1; 1; -1; 1; -1; 1]; 
    x = x0; iterm = 500;
    iter = 1; 
    tol = 0.0000005;
    error = 1;
    taula(iter,:) = [0,x'];
    while(iter < iterm && error > tol)
        xn = A*x;
        maxVal = max(xn(:,1));
        for j = 1:length(xn)
            xn(j,:) = xn(j,:)/maxVal; 
        end
        m = norm(xn, 'inf'); % mk+1 candidat a valor propi
        error = norm(xn-m*x);
        x = xn;
        %x = xn/m; % xk+1 candidat a vector propi
        iter = iter+1;
        if (i == 1) 
            taula(iter,:) = [m,x'];
        else
            taula(iter,:) = [1/m,x'];
        end
        
    end
    vep = x
    if (i == 1) 
        vap_max = maxVal
        % Rayleigh
        prova = A*vep-vap_max*vep;
    else
        vap_min = 1/m
    end

    

%disp(taula);
iter
error
end