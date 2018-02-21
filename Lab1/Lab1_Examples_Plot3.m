%% Plot examples
%%
% Two plots in the same window
%rand(10000,1) is a vector of 100000 rands, (1 -> 1 row), if we put
%rand(10000) then it's a NxN matrix

%subplots(number) to put the different plots in the same window

RU = rand(10000,1); 
RN = randn(10000,1);
subplot(211), hist(RU, 50), title('Uniform');
subplot(212), hist(RN, 100); title('Normal')
