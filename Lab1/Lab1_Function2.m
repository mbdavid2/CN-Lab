%% Main error program
% We see all the errors (because the function has the displays)
% But with this: [e1, e2], etc we can choose to "get" only certain
% arguments
%% Only returning the first argument
[e1] = Lab1_Function(pi, 3.14)
%% Two results
[e1,e2] = Lab1_Function(pi, 3.14)
%% Three results
[e1,e2,e3] = Lab1_Function(pi, 3.14)