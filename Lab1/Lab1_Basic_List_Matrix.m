%function1(2) = 2^3
function1 = @(x) x*x*x;

%list1(2) to access 2
list1 = [1 2 3 4];

%x=a:step:b;
vector = 1:5:100;

%different
vector3 = linspace(10,100,20);

%{ Default Matrix Constructors %}
a = ones(3);
b = zeros(2);
c = ones(6);

v = 0:2:10;
% D = diag(v) returns a square diagonal matrix with the elements of vector v on the main diagonal.
diagMat = diag(v); 


%MANUAL matrix
matrix1 = [1 2; 3 4; 5 6]; %matrix1(2,1) = 3

%to access the entire row: matrix1(2,:)
%we can change it as well: matrix1(2,:) = [1 98]

%{
    matrix1 = [matrix1; 3 4] adds a new row to the matrix
    matrix1 = matrix1(1:2,:) deletes one row¿?¿?
%}

%det(a), rank(c),  inv(b), size(c)