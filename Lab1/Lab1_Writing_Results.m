%% Writing results
x = 0:0.1:1;
y = exp(x);
table = [x;y]'

%% Storing the data in a file 
%fid = fopen('test.txt', 'w');
%fprint(fid, '%6s %12s\n', 'x', 'e^x');
%fprint(fid, '%6.2f %12.8f\n', taula);
%fclose(fid);