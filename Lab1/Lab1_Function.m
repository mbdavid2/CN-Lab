function [ea, er, erp] = Lab1_Function(x,y);
%% Function example
% the name of the function must be the same as the file
% abs error, rel error and %
%% Absolute error
ea = abs(x-y);
disp(' abs error: '), disp(ea)
%% Relative error
er = ea/abs(x);
disp(' relative error: '), disp(er)
%% Relative error %
erp = er*100;
disp(' relative error %: '), disp(erp)

end
