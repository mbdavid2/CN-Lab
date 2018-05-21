function d = pchipend(h1,h2,del1,del2)
    % Noncentered, shape-preserving, three-point formula.
    d = ((2*h1+h2)*del1 - h1*del2)/(h1+h2);
    if sign(d) ~= sign(del1)
        d = 0;
    elseif (sign(del1)~=sign(del2))&(abs(d)>abs(3*del1))
        d = 3*del1;
    end
end