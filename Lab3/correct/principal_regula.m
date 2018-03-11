%%  Exercici 2 -  full lab3.pdf
%  Dijous 8 de març
%% Gràfica
f=@(x)x.^2-2;
t=0:0.05:3;
plot(t,f(t),sqrt(2),0,'r*','LineWidth',2),grid,title('equació')
%% Iteracions
a=0; b=2; tol=0.000005;
aux=f(a)*f(b);
if aux <0
    root = new_regula(f,a,b,tol,15)
else
    disp('No es verifica Thma de Bolzano')
end