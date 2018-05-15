%% Ex 2 Mètode de la potència per trobar valor propi
format long
%% Valor propi de modul màxim/minim
for i = 1:2
    n = 3;
    [B, pos] = generate_wilkinson_matrices(n)
    if (i == 1) 
        A = B;
    else
        A = inv(B);
    end
    
    x0 = [0 0 1 1 1 1 1]'; 
    x = x0; iterm = 50;
    iter = 1; 
    tol = 0.000000005;
    error = norm(x, 'inf');
    taula(iter,:) = [0,x'];
    while(iter < iterm && error > tol)
        y = A*x;
        m = norm(y, 'inf'); % mk+1 candidat a valor propi
        error = norm(y-m*x);
        x = y/m; % xk+1 candidat a vector propi
        iter = iter+1;
        taula(iter,:) = [m,x'];
    end
    vep = x
    if (i == 1) 
        vap_max = m
    else
        vap_min = 1/m
    end

    % Rayleigh
%     prova = A*vep-vap*vep;

%disp(taula);
iter;
%     error;
end