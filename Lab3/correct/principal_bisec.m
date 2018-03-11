%% Dijous 8 de març - Principal Regula Falsi
%
%% Gràfica
f=@(x)x.^6-x-1;
t=1:0.05:1.4;
plot(t,t.^6,t,t+1),grid,title('equació')
%% Iteracions
a=1; b=1.2; tol=0.005;
aux=f(a)*f(b);
if aux <0
    root = new_bisec(f,a,b,tol,5)
else
    disp('No es verifica Thma de Bolzano')
end