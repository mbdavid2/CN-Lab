format long
%% Metodes iteratius
% exemple inicial
%% Sistema d'equacions
clc
A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6; 25; -11; 15];

% Matrius auxiliars
D=diag(diag(A));
L=tril(A,-1);
U=triu(A,1);

%% Mètode de Jacobi
aux=inv(D);
Bj=-aux*(L+U);
cj = aux*b;
rhoJ=max(abs(eig(Bj)))
if(rhoJ < 1)
    fprintf('Mètode de Jacobi Convergent\n ')
    kMax = 10; tol = eps;
    [ xJ, residuJ ] = itera( A, b, Bj, cj, kMax, tol)
else 
    fprintf('Mètode de Jacobi divergent\n ')
end
%% Mètode de Gauss-Seidel
aux=inv(L+D);
Bs=-aux*(U);
cs = aux*b;
rhoS = max(abs(eig(Bs)))
if(rhoS < 1)
    fprintf('Mètode de Gauss-Seidel Convergent\n ')
    kMax = 10; tol = eps;
    [ xS, residuS ] = itera( A, b, Bs, cs, kMax, tol)
else 
    fprintf('Mètode de Gauss-Seidel divergent\n ')
end

%% Mètode de SOR (w) (sobrerelaxacio)
w = 0.5
aux = inv(w*L+D);
Bw = aux*((1-w)*D-w*U);
cw = aux*w*b;
rhoW = max(abs(eig(Bw)))
if(rhoW < 1)
    fprintf('Mètode de SOR Convergent\n ')
    kMax = 10; tol = eps;
    [ xS, residuS ] = itera( A, b, Bw, cw, kMax, tol)
else 
    fprintf('Mètode de SOR divergent\n ')
end