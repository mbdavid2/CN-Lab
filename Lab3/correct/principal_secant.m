%% Dijous 8 de març - Principal Secant
%
%% Gràfica
f=@(x)x.^6-x-1;
t=1:0.05:1.4;
plot(t,t.^6,t,t+1),grid,title('equació')
%% Iteracions
a=1; b=1.2; tol=0.0000005;
root = new_secant(f,a,b,tol,5)