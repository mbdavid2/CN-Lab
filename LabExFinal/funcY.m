function [ y ] = funcY(x)
    a = 1; b = 5;
    y = (1/((b.^a)*gamma(a))).*(x.^(a-1)).*exp(-x/b);
end

