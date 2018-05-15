function [ A, b ] = initMatriu( n )
%% Inicialització matrius
A = zeros(n,n);
b = zeros(n,1);
for c = 1:n
    for r = 1:n
        if r == c
            A(r,c) = 5;
        elseif abs(r-c) <= 2
            A(r,c) = -1;
        elseif r == 1 || r == n
            b(c,:) = 3;
        elseif r == 2 || r == n-1
            b(c,:) = 2;
        else %abs(r-c) > 2
            A(r,c) = 0;
            b(c,:) = 1;
        end  
    end
end
end

