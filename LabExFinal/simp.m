function [I] = simp(func,a,b,k)
%   trapm integrates function "func" from "a" to "b" for 2^(k-1) segments
%   using previous integral "Ip" using 2^(k-2) segments
I = 0;
H = (b-a)/2;
if k == 0
    I = (H/3)*(func(a) + 4*func((a+b)/2)+ func(b));
else
    sub = (b - a)/k;
	for i = a:sub:b-1
        auxA = i;
        auxB = i+sub;
        H = (auxB - auxA)/2;
        Iaux = (H/3)*(func(auxA) + 4*func((auxA+auxB)/2)+ func(auxB));
        I = I + Iaux;
    end
end
end