%% Àlgebra lineal numèrica: mètodes iteratius
clear; clc;
format long;
%% Inicialització matrius
[A, b] = initMatriu(6);
% nkA = cond(A,1);
% taulaDet = (zeros(2, 30-6));
% i = 1;
% taulaDet(:,i) = [nkA , det(A)];
% i = i + 1;
% for n=7:30
%     [A, b] = initMatriu(n);
%     detA = det(A);
%     nkA = cond(A,1);
%     taulaDet(:, i) = [nkA, detA];
%     i = i + 1;
% end
% taulaDet(:,1)

%% Matrius auxiliars

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

%% Estudi convergència Jacobi
totalConv = zeros(30-6,2);
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    aux = inv(D);
    Bj = -aux *(L+U);
    rhoJ = max(abs(eig(Bj)));
    totalConv(i,:) = [n, rhoJ];
    if(rhoJ < 1)
        fprintf('Mètode de Jacobi Convergent\n ')
    else 
        fprintf('Mètode de Jacobi divergent\n ')
    end
    i = i + 1;
end
filename = 'JacobiEstudiConvergencia.xlsx';
xlswrite(filename,totalConv);

%% Estudi convergència Gauss-Seidel
totalConv = zeros(30-6,2);
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    aux=inv(L+D);
    Bs=-aux*(U);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    rhoS = max(abs(eig(Bs)));
    totalConv(i,:) = [n, rhoS];
    if(rhoS < 1)
        fprintf('Mètode de Gauss-Seidel Convergent\n ');
    else 
        fprintf('Mètode de Gauss-Seidel divergent\n ');
    end
    i = i + 1;
end
filename = 'GaussSeidelEstudiConvergencia.xlsx';
xlswrite(filename,totalConv);

%% Mètode de Jacobi
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    aux = inv(D);
    Bj = -aux *(L+U);
    cj = aux * b;
    rhoJ = max(abs(eig(Bj)));
    if(rhoJ < 1)
        %fprintf('Mètode de Jacobi Convergent\n ');
        kMax = 100; tol = 0.000000005;
        [ xJ, residuJ, it ] = itera( A, b, Bj, cj, kMax, tol);
        iteracionsJacobi(i,:) = [n, it];
    else 
        fprintf('Mètode de Jacobi divergent\n ');
    end
    i = i + 1;
end
filename = 'JacobiIteracions.xlsx';
xlswrite(filename,iteracionsJacobi);

%% Mètode de Gauss-Seidel
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    aux=inv(L+D);
    Bs=-aux*(U);
    cs = aux*b;
    rhoS = max(abs(eig(Bs)));
    if(rhoS < 1)
        %fprintf('Mètode de Gauss-Seidel Convergent\n ');
        kMax = 100; tol = 0.000000005;
        [ xS, residuS, it ] = itera( A, b, Bs, cs, kMax, tol);
        iteracionsGauss(i,:) = [n, it];
    else 
        fprintf('Mètode de Gauss-Seidel divergent\n ');
    end
    i = i + 1;
end
filename = 'GaussSeidelIteracions.xlsx';
xlswrite(filename,iteracionsGauss);