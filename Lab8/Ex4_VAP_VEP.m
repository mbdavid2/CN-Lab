%% Valor propi de modul màxim
%% file:///C:/Users/David/Google%20Drive/UNI/CN/Teoria/Tema3.2-Valors%20singulars,%20propis,%20etc.pdf
%% pag 9/25
format long
A = [1 0 -1; 1 2 1; 2 2 3]
x0 = [0 0 1]'; % x0 = [1 -1 1]
x = x0; iterm = 25;
iter = 1; tol = 0,005;
error = norm(x, 'inf');
taula(iter,:) = [0,x'];
while(iter < iterm && error > tol)
    z = A*x;
    m = norm(z, 'inf'); % candidat a valor propi
    z = z/m; % candidat a vector propi
    iter = iter+1;
    error = norm(x-z, 'inf');
    x = z;
    taula(iter,:)=[m,x'];
end
taula
vep = z
vap = m

%% Comprovem

prova = A*vep-vap*vep