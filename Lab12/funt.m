function [ y ] = funt(x)
    % 1 si x = 0, altrament sin(x)/x
    if (x == 0) 
        y = 1;
    else
        y = sin(x)./x;
    end
end