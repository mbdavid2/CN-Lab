%% Metodes iteratius
% Exemple sistema equacions resolt
% (del pdf)


%% IMPORTANT
% Si seidel convergeix, jacobi tambe (pero el reciproc NO!)

%% Sistema d'equacions
A = [1 0 1; -1 1 0; 1 2 -3];
b = [4; 1; -4];

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
    kMax = 300; tol = 0.005;
    [ x, residu ] = itera( A, b, Bj, cj, kMax, tol)
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
    kMax = 100; tol = 0.005;
    [ x, residu ] = itera( A, b, Bs, cs, kMax, tol)
else 
    fprintf('Mètode de Gauss-Seidel divergent\n ')
end
