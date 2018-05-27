function [R] = RombergDisp(func,a,b,k)
%   function [] = RombergDisp(func,a,b,k)
%   Romberg integrates function "func" of one variable and nonsingular    
%   from "a" to "b" with order of "k" and displays all results. 
%   k >= 0. Using Romberg integration.
%  	I = RombergDisp(@func,a,b,k)
%   e.g. 
%   RombergDisp(@sin,0,pi,2)
%   0.000000000000000	
%   1.570796326794897	2.094395102393195	
%   1.896118897937040	2.004559754984421	1.998570731823836
format long
k = abs(k);
if isinf(abs(a)) || isinf(abs(b)) || a > b || a == b
	error('Improper interval')
end
R  = zeros(1,k+1);
for i = 0:k
    if i==0
        R(i+1) = trapm(func,a,b,i+1,0);
    else
        R(i+1) = trapm(func,a,b,i+1,R(i));
    end
    fprintf('%0.15f\t',R(i+1));
    for j = i:-1:1
        p = 4^(i-j+1);
        R(j) = (p*R(j+1) - R(j))/(p - 1);
        fprintf('%0.15f\t',R(j));
    end
    fprintf('\n');
end
end

