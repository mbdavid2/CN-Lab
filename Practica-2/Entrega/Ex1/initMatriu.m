function [ A, b ] = initMatriu( n )
%% Inicialització matrius
A = zeros(n,n);
b = ones(n,1);
for r = 1:n
    for c = 1:n
        if r == c
            A(r,c) = 5;
        elseif abs(r-c) <= 2
            A(r,c) = -1;
        elseif r == 1 || r == n
            b(r,1) = 3;
        elseif r == 2 || r == n-1
            b(r,1) = 2;
        elseif abs(r-c) > 2
            A(r,c) = 0;
        end  
        %         elseif r ~= 1 & r ~= 2 & r ~= n-1 & r ~= n
    end
end
end

