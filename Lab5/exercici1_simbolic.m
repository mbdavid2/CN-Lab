%% Derivades symbolic Math toolbox
syms x y
DF=jacobian([x-sin(x+y),y-cos(x-y)], [x, y])