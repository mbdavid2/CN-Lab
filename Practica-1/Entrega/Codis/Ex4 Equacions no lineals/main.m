format long
%% Plot
t=-1:0.05:6;
f=@(x)exp(x).*(5-x)-5;

plot(t,f(t),t,zeros(size(t))),axis([-1 6 -10 55]),grid

f(-1)*f(1)
f(4.5)*f(5)

%% FZero Matlab
% Arrel no nul·la
format long;
interval = [4,6];
valorCorrecte = fzero(f,interval)

%% Mètode de la bisecció
format long;
a = 4; b = 6; tol = eps; % 0.5*10^(-10)
[ root, taula, logsBi ] = new_bisec(f,a,b,tol,20,valorCorrecte)
plot(logsBi)
errAbs = abs(root-valorCorrecte)

%% Newton's method
df=@(x)exp(x).*(4-x);
df2=@(x)exp(x).*(3-x);

%plot(t,df(t),t,zeros(size(t))),axis([-1 6 -10 55]),grid
%plot(t,df2(t),t,zeros(size(t))),axis([-1 6 -10 55]),grid

% Regla de Fourier
% 1. f(4.5)*f(5) < 0 -> ok
% 2. df(x)=0 a x=4, df2(x)=0 a x=3
% 3. f(4.5)*df2(4.5) = -5.4022e+03
%    f(5)*df2(5) = 1.4841e+03
% Com amb = 5 f(b)*df2(b) > 0, x0 = 5.

x0 = 5; tol = eps;
[ root, taula, logsNew ] = new_new(f,df,x0,tol,10,valorCorrecte)
plot(logsNew)
errAbs = abs(root-valorCorrecte)

%% Mètode de la secant 
a = 4; b = 6; tol = eps; % 0.5*10^(-10)
[ root, taula, logsSec ] = new_secant(f,a,b,tol,20,valorCorrecte)

errAbs = abs(root-valorCorrecte)

%% Mètode iteratiu #1

g1 = @(x)5-5/(exp(x));
dg1 = @(x)5*exp(-x);
x0 = 5;
tol = 0.00005;
N = 20;
if (abs(dg1(x0)) < 1)
    [ root, x_sol, logsIt1 ] = new_fixPoint(f,g1,x0,tol,N);
    errAbs = abs(root-valorCorrecte)
    plot(logsIt1)
else 
    disp('Divergent!')
end

%% Mètode iteratiu #2

g1 = @(x)log(5/(5-x));
dg1 = @(x)1/(5-x);
x0 = 4.9;
tol = 0.0005;
N = 20;
if (abs(dg1(x0)) < 1)
    [ root, x_sol, logsIt2] = new_fixPoint(f,g1,x0,tol,N)
else 
    disp('Divergent!')
end

%% 4 
plot(logsIt1), hold on
plot(logsBi), hold on
plot(logsNew), hold on
plot(logsSec)
title('Comparació mètodes: iteracions i errors relatius'), grid
xlabel('Iteracions')
ylabel('Logaritmes valors absoluts dels errors relatius')
legend('Mètode Iteratiu','Bisecció', 'Newton','Secant')