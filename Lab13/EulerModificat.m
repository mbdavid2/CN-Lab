function [ ye ] = EulerModificat( f,a,b,h,alpha )
    % Mètode d'Euler modificat
    t = [a:h:b];
    N = length(t);
    ye(1) = alpha;
    for i = 1:N-1
        w(i) = ye(i) + h/2*f(t(i),ye(i));
        ye(i+1) = ye(i) + h*f(t(i)+h/2,w(i));
    end
end

