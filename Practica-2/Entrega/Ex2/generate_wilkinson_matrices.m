function [Wm,Wp] = generate_wilkinson_matrices(n)
   D = diag(ones(2*n,1),1);
   Wm = diag(-n:n) + D + D';
   Wp = abs(diag(-n:n)) + D + D';
end