%% Plot examples
%%
% Two plots in the same window
%rand(10000,1) is a vector of 100000 rands, (1 -> 1 row), if we put
%rand(10000) then it's a NxN matrix

%subplots(number) to put the different plots in the same window

RU = rand(10000,1); 
RN = randn(10000,1);
subplot(221), plot(RU), title('Plot Uniform');
subplot(222), plot(RN); title ('Plot Normal')
subplot(223), hist(RU, 50), title('Uniform');
subplot(224), hist(RN, 100); title ('Normal')