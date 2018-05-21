%% Àlgebra lineal numèrica: mètodes iteratius
clear; clc;
format long;

%% Inicialització matrius
[A, b] = initMatriu(6);
detA = det(A);
taulaDet = (zeros(30-6,1));
taulaCond = (zeros(30-6,1));
taulaCond2 = (zeros(30-6,1));
taulaCondInf = (zeros(30-6,1));
i = 1;
taulaDet(i) = det(A);
taulaCond(i) = cond(A,1)
taulaCond2(i) = cond(A)
taulaCondInf(i) = cond(A,'inf')
i = i + 1;
for n=7:30
    [A, b] = initMatriu(n);
    taulaDet(i) = det(A);
    taulaCond(i) = cond(A,1);
    taulaCond2(i) = cond(A);
    taulaCondInf(i) = cond(A,'inf');
    i = i + 1;
end
% filename = 'determinantMatrius.xlsx';
% xlswrite(filename,taulaDet);
% 
% filename = 'nombreCondMatrius.xlsx';
% xlswrite(filename,taulaCond);

%% Plot determinant

t = 6:30;
plot(t, taulaDet,'--','LineWidth',3), title('Determinant matrius')
ylabel('Valor determinant')
xlabel('N -> Tamany matriu')
grid('on')

%% Plot nombre condició
t = 6:30;
hold all,
plot(t, taulaCond,'--','Color','g','LineWidth',4,'DisplayName','Norma 1')
plot(t, taulaCond2,'--','Color','b','LineWidth',2,'DisplayName','Norma 2')
plot(t, taulaCondInf,'--','Color','r','LineWidth',2,'DisplayName','Norma Infinita')
title('Nombre de condició matrius')
ylabel('Valor nombre de condició')
xlabel('N -> Tamany matriu')
legend('show','location','best'),
grid('on')

%% Matrius auxiliars

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

%% Estudi convergència Jacobi
totalConvJac = zeros(30-6,1);
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    aux = inv(D);
    Bj = -aux *(L+U);
    rhoJ = max(abs(eig(Bj)));
    totalConvJac(i) = rhoJ;
    if(rhoJ < 1)
        %fprintf('Mètode de Jacobi Convergent\n ')
    else 
        fprintf('Mètode de Jacobi divergent\n ')
    end
    i = i + 1;
end
% filename = 'JacobiEstudiConvergencia.xlsx';
% xlswrite(filename,totalConv);

%% Estudi convergència Gauss-Seidel
totalConvGauss = zeros(30-6,1);
i = 1;
for n=6:30
    [A, b] = initMatriu(n);
    D = diag(diag(A));
    L = tril(A,-1);
    U = triu(A,1);
    aux = inv(L+D);
    Bs =- aux*(U);
    rhoS = max(abs(eig(Bs)));
    totalConvGauss(i) = rhoS;
    if(rhoS < 1)
        %fprintf('Mètode de Gauss-Seidel Convergent\n ');
    else 
        fprintf('Mètode de Gauss-Seidel divergent\n ');
    end
    i = i + 1;
end
% filename = 'GaussSeidelEstudiConvergencia.xlsx';
% xlswrite(filename,totalConv);

%% Plot comparació convergencies
t = 6:30;
hold all,
plot(t, totalConvGauss,'--','Color','r','LineWidth',2,'DisplayName','Gauss-Seidel')
plot(t, totalConvJac,':','Color','b','LineWidth',2,'DisplayName','Jacobi')
title('Estudi radi espectral')
ylabel('Radi Espectral (rho)')
xlabel('N -> Tamany matriu')
legend('show','location','best'),
grid('on')

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
        iteracionsJacobi(i) = it;
    else 
        fprintf('Mètode de Jacobi divergent\n ');
    end
    i = i + 1;
end
% filename = 'JacobiIteracions.xlsx';
% xlswrite(filename,iteracionsJacobi);

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
        iteracionsGauss(i) = it;
    else 
        fprintf('Mètode de Gauss-Seidel divergent\n ');
    end
    i = i + 1;
end
% filename = 'GaussSeidelIteracions.xlsx';
% xlswrite(filename,iteracionsGauss);

%% Plot comparació iteracions
t = 6:30;
hold all,
plot(t, iteracionsGauss,'--','Color','r','LineWidth',2,'DisplayName','Gauss-Seidel')
plot(t, iteracionsJacobi,':','Color','b','LineWidth',2,'DisplayName','Jacobi')
title('Estudi nombre iteracions (8 decimals correctes)')
ylabel('Nombre d''iteracions')
xlabel('N -> Tamany matriu')
legend('show','location','best'),
grid('on')