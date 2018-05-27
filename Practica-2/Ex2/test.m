clear; clc; format long;
error = 1; iter = 1;
error2 =1;
errorDirecte = 1;
taula1(iter,:)=[1,0,0,0,0,0,0];
[B, pos] = generate_wilkinson_matrices(3);
eigsMatlab = flipud(eig(B));
eigenValueMatlab = max(eigsMatlab);
A = B;
x = [0;1;1;1;1;1;1];
norma2 = norm(A,2); % Com A es simetrica, la norma 2 es igual al radi espectral, es a dir, el maxim dels valors propis de la matriu, que es el que busquem
while (iter < 20 && errorDirecte > 0.000005)
    z = A*x;
    m2 = (z'*x)./(x'*x); 
    m = norm(z,'inf');
    x1 = z/m; 
    error = norm(z-m*x);
    error2 = norm(x1-x,'inf');
    error3 = abs(norma2 - m);
    errorDirecte = abs(eigenValueMatlab - m);
    iter = iter + 1;
    x = x1;
    taula1(iter,:)=[iter, m, error,error2,error3,m2,errorDirecte];
end
vap_max = m;
vep = x;
iter;

%% Display results
t = 1:iter; hold all
plot(t, taula1(:,2),'LineWidth', 2, 'DisplayName', 'Valor Propi Màxim')
plot(t, taula1(:,3),'DisplayName', 'Error1: norm(z-m*x)')
plot(t, taula1(:,4),'DisplayName', 'Error2: norm(x1-x,inf)')
plot(t, taula1(:,5),'DisplayName', 'Error3: abs(norma2 - m);')
plot(t, taula1(:,7),'DisplayName', 'Error Directe: abs(eigenValueMatlab - m')
xlabel('Iteracions')
ylabel('Valor')
legend('show','location','best'), title('Evolució mètode de la potència'), grid('on')

%% Eigenvalues matlab
%https://blogs.mathworks.com/cleve/2013/04/15/wilkinsons-matrices-2/
format long
[Wm,Wp] = generate_wilkinson_matrices(3);
disp('       eig(Wm(21))')
disp(flipud(eig(Wm)))