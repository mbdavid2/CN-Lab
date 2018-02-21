%% Errors
% abs error, rel error and %
clear all, clc, format compact

x = input(' insert x: ')  
y = input(' insert y: ') 
%% Absolute error
ea = abs(x-y);
disp(' abs error: '), disp(ea)
%% Relative error
er = ea/abs(x);
disp(' relative error: '), disp(er)
%% Relative error %
erp = er*100;
disp(' relative error %: '), disp(erp)
