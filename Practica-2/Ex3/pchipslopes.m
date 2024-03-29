function d = pchipslopes(h,delta)
    % PCHIPSLOPES Slopes for shape-preserving Hermite cubic
    % pchipslopes(h,delta) computes d(k) = P�(x(k)).
    % Slopes at interior points
    % delta = diff(y)./diff(x).
    % d(k) = 0 if delta(k-1) and delta(k) have opposites
    % signs or either is zero.
    % d(k) = weighted harmonic mean of delta(k-1) and
    % delta(k) if they have the same sign.
    n = length(h)+1;
    d = zeros(size(h));
    k = find(sign(delta(1:n-2)).*sign(delta(2:n-1))>0)+1;
    w1 = 2*h(k)+h(k-1);
    w2 = h(k)+2*h(k-1);
    d(k) = (w1+w2)./(w1./delta(k-1) + w2./delta(k));
    % Slopes at endpoints
    d(1) = pchipend(h(1),h(2),delta(1),delta(2));
    d(n) = pchipend(h(n-1),h(n-2),delta(n-1),delta(n-2));
end