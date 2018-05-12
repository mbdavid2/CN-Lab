function [ rhoJ ] = radis(A)
    % Calcula els radis espectrals de la matriu

    % Matrius auxiliars
    D=diag(diag(A));
    L=tril(A,-1);
    U=triu(A,1);

    %% Mètode de Jacobi
    aux=inv(D);
    Bj=-aux*(L+U);
    rhoJ=max(abs(eig(Bj)));

    %% Mètode de Gauss-Seidel
    aux=inv(L+D);
    Bs=-aux*(U);
    rhoS = max(abs(eig(Bs)));

    %% Mètode de SOR (w) (sobrerelaxacio)
    k = 1;
    for w=0:0.1:2
        aux = inv(w*L+D);
        Bw = aux*((1-w)*D-w*U);
        rhoW(k) = max(abs(eig(Bw)));
        k = k+1;
    end

    % Metode de SOR (w-optim)
    wo=2/(1+sqrt(1-rhoJ^2));
    aux =inv(wo*L+D);
    Bwo = aux*((1-wo)*D-wo*U);
    rhoWO=max(abs(eig(Bwo)));
    
    n =length(rhoW);
    plot(1:n, rhoW,'r*', 1:n, rhoJ, 'bs', 1:n, rhoS,'go',1:n,rhoWO,'c*')
end

