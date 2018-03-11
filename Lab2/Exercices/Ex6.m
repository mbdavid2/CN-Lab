%% Ex 6 (2. Algorithms)
%% Sensitivity to initial conditions

r=1:10;
p=poly(r); %p(x) = (x-1)(x-2)...(x-10)
% p' to see it
arrels=roots(p); %We can actually get its roots like this
arrels'

q = p; 
q(2) = q(2)+2^(-13); q'

arrels2 = roots(q)
