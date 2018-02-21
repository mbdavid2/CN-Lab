%% Basic plot examples
% Note: Without the ';' it interprets the lines as commands and shows the values of x, y, etc in the publish html!
% From 0 to 2*pi
x = 0:2*pi;
y = sin(x);
plot(x,y)

%%
% To have more definition add "steps"
x = 0:pi/20:2*pi;
y = sin(x);
plot(x,y)

%%
% Add more functions and improve the plot presentation
x = 0:pi/20:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);
plot(x,y1,x,y2,'--',x,y3,':'), title('Sinus plot'), grid
