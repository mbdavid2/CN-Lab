%% Derivades symbolic Math toolbox
syms x y
DG=jacobian([sin(x+y),cos(x-y)], [x, y])