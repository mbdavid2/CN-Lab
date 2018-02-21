%% Plot examples
%%
%
x = 0:pi/20:2*pi;
y1 = sin(x);
plot(x,y1), %hold on;
y2 = sin(x-0.25);
plot(x,y2,'oo');
%pause wait for user input (click the command prompt)
%pause(2) waits two seconds
pause(2)
y3 = sin(x-0.5); pause;
plot(x,y3,':');
%hold off
