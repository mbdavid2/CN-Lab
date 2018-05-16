%% Exercici 3
% quadratures amb Matlab 

%%
% $\int_1^2 \ln(x)dx
a = 1; b = 2; tol = 0.0005;
f=@(x)log(x);

%%
format long g
qS = quad(f,a,b,tol)
qL = quadl(f,a,b,tol)
qK = quadgk(f,a,b)

% integral decideix quin dels anteriors algorismes farà servir
q2 = integral(f,a,b,'RelTol',0,'AbsTol',tol)


