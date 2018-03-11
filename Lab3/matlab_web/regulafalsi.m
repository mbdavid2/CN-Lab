function root = regulafalsi(f,a,b,epsilon)

% Program : regulafalsi.m
%
% Purpose : find the root of a given single variable function within the
%           given interval
%
% Author :  Aamir Alaud Din
% Date :    26.09.2013
%
% Inputs :  At least three input arguments are required viz., function, two
%           points in the interval
%
% Syntax :  root = regulafalsi(f,a,b)
%           where f is an inline function 
%           e.g., f = inline('sin(x)','x');
%           a and b are points belonging to the given interval
%
% Example:  root = regulafalsi(f,-3,5)
%           The fourth input argument is the stopping criteria
%           If the function value deceeds epsilon, the loop terminates
%           giving the root. Default is 1e-6.
%
% Syntax :  root = regulafalsi(f,a,b,epsilon)
%
% Example:  root = bisection(f,1,2,1e-9)
%           where f is again an inline function as mentioned above

if (nargin < 3)
    error('Wrong number of input arguments');

elseif (nargin == 3)
    Iter = 0;
    epsilon = 1e-6;
    g = 1;
    disp('Iteration       a          b          x          f(a)          f(b)');
    disp('=========    =======    =======    =======    ==========    ==========');
    while(g > epsilon)
        Iter = Iter + 1;
        if (f(a) == f(b))
            fprintf('Function has the same value on a and b on iteration %d', Iter);
            fprintf('\n');
            disp('Denominator in Regula falsi is zero');
            root = 'Regula falsi can''t compute the root';
            return;
        end
        x = a - ((f(a)*(b-a))/(f(b) - f(a)));
        if(f(x)*f(a) > 0)
            b = x;
            g = f(b);
            root = b;
        else
            a = x;
            g = f(a);
            root = a;
        end
        fprintf('%3d', Iter);
        fprintf('%17.4f', a);
        fprintf('%11.4f', b);
        fprintf('%11.4f', x);
        fprintf('%14.4f', f(a));
        fprintf('%14.4f', f(b));
        fprintf('\n');
    end
    
elseif (nargin == 4)
    Iter = 0;
    g = 1;
    disp('Iteration       a          b          x          f(a)          f(b)');
    disp('=========    =======    =======    =======    ==========    ==========');
    while(g > epsilon)
        Iter = Iter + 1;
        if (f(a) == f(b))
            fprintf('Function has the same value on a and b on iteration %d', Iter);
            fprintf('\n');
            disp('Denominator in Regula falsi is zero');
            root = 'Regula falsi can''t compute the root';
            return;
        end
        x = a - ((f(a)*(b-a))/(f(b) - f(a)));
        if(f(x)*f(a) > 0)
            b = x;
            g = f(b);
            root = b;
        else
            a = x;
            g = f(a);
            root = a;
        end
        fprintf('%3d', Iter);
        fprintf('%17.4f', a);
        fprintf('%11.4f', b);
        fprintf('%11.4f', x);
        fprintf('%14.4f', f(a));
        fprintf('%14.4f', f(b));
        fprintf('\n');
    end
    
elseif (nargin > 4)
    error('Too many input arguments');
end