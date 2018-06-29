format long
clear, clc
%% Plot
t=0:0.01:1;
prob=@(x)(((1+x)/2)*(x/(1-x+x.^2)).^21)-0.25;
plot(t,prob(t))
% 
% f(-1)*f(1)
% f(4.5)*f(5)

%% FZero Matlab
format long;
interval = [0.7,0.8];
valorCorrecte = fzero(prob,interval)


for i = 0:0.1:0.9
    a = i;
    b = i + 0.1;
    interval = [a, b, prob(a)*prob(b)]
end

%% Mètode de la secant 
a = 0.7; b = 0.8; tol = 0.0005
[ root, taula] = new_secant(prob,a,b,tol,20,valorCorrecte)
zeroooo = (((1+0)/2)*(root/(1-root+root.^2)).^21)
errAbs = abs(root-valorCorrecte)

