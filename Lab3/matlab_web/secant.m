function root = secant(f,xo,x1,epsilon)
% Program : secant.m
%
% Purpose : find the root of a given single variable function within the
%           given interval
%
% Author :  Aamir Alaud Din
% Date :    20.09.2013
%
% Inputs :  At least three input arguments are required viz., function and
%           two points belonging to the interval
%
% Syntax :  root = secant(f,xo,x1)
%           where f is an inline function and is continuous in the given
%           interval
%           e.g., f = inline('x^6 - x - 1','x'); 
%           xo and x1 are two numbers belonging to the interval
%
% Example:  root = secant(f,-1,5)
%           The fourth input argument is the stopping criteria
%           If the function value deceeds epsilon, the loop terminates
%           giving the root. Default is 1e-6.
%
% Syntax :  root = newton(f,xo,x1,epsilon)
%           where f, xo, and x1 are explained above.
%
% Example:  root = secant(f,-4,0,1e-4)

if (nargin < 3)
    error('Less input arguments');
    
elseif (nargin == 3)
    epsilon = 1e-6;
    Iter = 0;
    fprintf('xo = %d',xo);
    fprintf('\n');
    fprintf('f(xo) = %f',f(xo));
    fprintf('\n\n');
    disp('Iteration           x1           x2            f(x1)');
    disp('=========        ========     ========     ============');
    while(abs(f(x1)) >= epsilon)
        Iter = Iter + 1;
        if(f(x1)-f(xo) == 0)
            fprintf('f(x1)-f(xo) = 0 on iteration number %d',Iter);
            fprintf('\n');
            disp('We can not find the root');
            return;
        end
        x2 = x1 - (f(x1)*((x1-xo)/(f(x1)-f(xo))));
        fprintf('%3d',Iter);
        fprintf('%22.4f',x1);
        fprintf('%13.4f',x2);
        fprintf('%16.4f',f(x1));
        fprintf('\n');
        x1 = x2;
    end
    root = x2;
    
elseif(nargin == 4)
    Iter = 0;
    fprintf('xo = %d',xo);
    fprintf('\n');
    fprintf('f(xo) = %f',f(xo));
    fprintf('\n\n');
    disp('Iteration           x1           x2            f(x1)');
    disp('=========        ========     ========     ============');
    while(abs(f(x1)) >= epsilon)
        Iter = Iter + 1;
        if(f(x1)-f(xo) == 0)
            fprintf('f(x1)-f(xo) = 0 on iteration number %d',Iter);
            fprintf('\n');
            disp('We can not find the root');
            return;
        end
        x2 = x1 - (f(x1)*((x1-xo)/(f(x1)-f(xo))));
        fprintf('%3d',Iter);
        fprintf('%22.4f',x1);
        fprintf('%13.4f',x2);
        fprintf('%16.4f',f(x1));
        fprintf('\n');
        x1 = x2;
    end
    root = x2;
end