function [ ye ] = Euler( f,a,b,h,alpha )
    t = [a:h:b];
    N = length(t);
    ye(1) = alpha;
    for i = 1:N-1
        ye(i+1) = ye(i) + h*f(t(i),ye(i));
    end
end

