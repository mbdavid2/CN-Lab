function [I] = trapm(func,a,b,k,Ip)
%   trapm integrates function "func" from "a" to "b" for 2^(k-1) segments
%   using previous integral "Ip" using 2^(k-2) segments
I = 0;
H = b-a;
if k == 1
    I = (H/2)*(func(a) + func(b));
else
	for i = 1:2^(k-2)
        I = I + func(a+(2*i-1)*H/(2^(k-1)));
 	end
    I = 0.5*Ip+(H/(2^(k-1)))*I;
end
end