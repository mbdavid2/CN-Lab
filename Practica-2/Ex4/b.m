%% Aproximació dades
clear, clc, clf;

%% Dades
x = 0:7;
y1 = [73.3 75.3 76.2 76.8 78.0 79.0 80.2 81.6];
y2 = [67.7 69.6 71.1 69.6 68.4 69.0 69.8 70.3];
plot(x,y1,'--',x,y2,'-'), title('Esperança de vida')
legend('Espanya','Belice', 'location', 'best')
