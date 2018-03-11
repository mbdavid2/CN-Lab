%% Ex 7 Lab3 (Full_lab3.pdf)

%% Plot
t=-4:0.01:4;
f=@(x)exp(x)-2+x; 
df=@(x)exp(x)+1; 
%plot(t,f(t))
plot(t,f(t),t,zeros(size(t))),grid

%% FZero Matlab
zero=fzero(f,0)

%% Newton's method
a = 0; tol = 0.0005;
root = new_new(f,df,a,tol,5)

%% Secant method
a = 0; b = 1; tol = eps; % 0.5*10^(-10)
root = new_sec(f,a,b,tol,5)

%% Bisection method
a = 0; b = 1; tol = eps; % 0.5*10^(-10)
% root = new_bis(f,a,b,tol,5)



