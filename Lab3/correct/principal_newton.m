%% Dijous 8 de març - Principal Newton
%
%% Gràfica
f=@(x)x.^6-x-1;
df=@(x)6*x.^5-1;
t=1:0.05:1.4;
plot(t,t.^6,t,t+1),grid,title('equació')
%% Iteracions
x0=1.2; tol=eps;
root = new_new(f,df,x0,tol,5)