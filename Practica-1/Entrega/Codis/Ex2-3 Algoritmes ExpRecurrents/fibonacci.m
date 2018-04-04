function [fn1 , fn] = fibonacci(n)
f = zeros(n,1);
f(1) = 1;
f(2) = 2;
for k = 3:n
    f(k) = f(k-1) + f(k-2);
end

% Return values
fn1 = f(n);
fn = f(n-1);
