%% Dijous 8 de mar� - Principal Secant
%
%% Gr�fica
f=@(x)x.^6-x-1;
t=1:0.05:1.4;
plot(t,t.^6,t,t+1),grid,title('equaci�')
%% Iteracions
a=1; b=1.2; tol=0.0000005;
root = new_secant(f,a,b,tol,5)