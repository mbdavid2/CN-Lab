%% Ex 6 Lab3 (Full_lab3.pdf)

%% Plot
t=0:0.05:2;
f=@(x)x.^6-x-1; % x^6 = x + 1 
df=@(x)6*x.^5-1; % manual f'
%plot(t,f(t))
plot(t,f(t),t,zeros(size(t))),grid

% WITH THE PLOT WE CAN SEE BETWEEN WICH POINTS IS THE ROOT!!!

%% FZero Matlab
zero=fzero(f,1.2)

%% Newton's method
a = 1.2; tol = eps;
root = new_new(f,df,a,tol,5)

%% Secant method
a = 1.2; b = 2; tol = eps; % 0.5*10^(-10)
root = new_sec(f,a,b,tol,5)

%% Bisection method
a = 0; b = 2; tol = eps; % 0.5*10^(-10)
% root = new_bis(f,a,b,tol,5)



