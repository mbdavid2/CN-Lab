%% Aproximació dades
clear, clc;
format short g;

%% Dades
x = 0:7;
y1 = [73.3 75.3 76.2 76.8 78.0 79.0 80.2 81.6];
y2 = [67.7 69.6 71.1 69.6 68.4 69.0 69.8 70.3];
% plot(x,y1,'--',x,y2,'-'), title('Esperança de vida')
% legend('Espanya','Belice', 'location', 'best')

%% Espanya
% *Busqueu un polinomi del grau escaient per mínims quadrats*
% hold all
taula(1,:) = [0,0,0,0,0];
for i = 1:7
    p = polyfit(x,y1,i);
    coefs = p';
    t = -2:0.1:9;
    v = polyval(coefs,t);

    % 2007
    valor2007 = v(81 + 2 + 2);
    err = 80.9 - v(81 + 2 + 2);
    error2007 = abs(err);
    
    % 1992
    valor1992 = v(51 + 4);
    err = 77.4 - v(51 + 4);
    error1992 = abs(err);

    % 1970
    valor1970 = v(11);
    err = 72.0 - v(11);
    error1970 = abs(err);
    
    % 2015
    valor2015 = v(101);
    err = 83.4 - v(101);
    error2015 = abs(err);
    
    taula(i,:) = [i, valor1970, valor1992, valor2007, valor2015];
    taulaErr(i,:) = [i, error1970, error1992, error2007, error2015];
end
% disp('Taula resultat valors');
% disp(taulaErr);
% filename = 'taulaValors2.xlsx';
% xlswrite(filename,taula);
% filename = 'taulaErrors.xlsx';
% xlswrite(filename,taulaErr);
for j = 1:size(taulaErr)
   taulaTotal(j, :) = [j, (sum(taulaErr(j,:)) - j)];
end
disp(taulaTotal)

%% Belice
% *Busqueu un polinomi del grau escaient per mínims quadrats*
% hold all
taulaB(1,:) = [0,0,0,0,0];
for i = 1:7
    p = polyfit(x,y2,i);
    coefs = p';
    t = -2:0.1:9;
    v = polyval(coefs,t);

    % 2007
    valor2007 = v(81 + 2 + 2);
    err = 80.9 - v(81 + 2 + 2);
    error2007 = abs(err);
    
    % 1992
    valor1992 = v(51 + 4);
    err = 77.4 - v(51 + 4);
    error1992 = abs(err);

    % 1970
    valor1970 = v(11);
    err = 72.0 - v(11);
    error1970 = abs(err);
    
    % 2015
    valor2015 = v(101);
    err = 83.4 - v(101);
    error2015 = abs(err);
    
    taulaB(i,:) = [i, valor1970, valor1992, valor2007, valor2015];
    taulaErrB(i,:) = [i, error1970, error1992, error2007, error2015];
end
disp('Taula resultat valors');
disp(taulaErrB);
% filename = 'taulaValorsB.xlsx';
% xlswrite(filename,taulaB);
% filename = 'taulaErrorsB.xlsx';
% xlswrite(filename,taulaErrB);
for j = 1:size(taulaErrB)
   taulaTotalB(j, :) = [j, (sum(taulaErrB(j,:)) - j)];
end
disp(taulaTotalB)
    
%% Gràfic polinomi espanya
clear, clc;
format short g;
x = 0:7;
y1 = [73.3 75.3 76.2 76.8 78.0 79.0 80.2 81.6];
p = polyfit(x,y1,3);
coefs = p';
t = -2:0.1:9;
v = polyval(coefs,t);
valor2007 = v(81 + 2 + 2);
valor1992 = v(51 + 4);
valor1970 = v(11);
valor2015 = v(101);
x = 1975:5:2010;
hold all
plot(x,y1,'o','DisplayName','Nodes originals')
plot(1970,valor1970,'*','DisplayName','1970')
plot(1992,valor1992,'*','DisplayName','1992')
plot(2007,valor2007,'*','DisplayName','2007')
plot(2015,valor2015,'*','DisplayName','2015')
title('Nodes Espanya Resultats Polinomi Grau 3')
grid on
legend('location','best')

%% Gràfic polinomi belice
clear, clc;
format short g;
x = 0:7;
y2 = [67.7 69.6 71.1 69.6 68.4 69.0 69.8 70.3];
p = polyfit(x,y2,1);
coefs = p';
t = -2:0.1:9;
v = polyval(coefs,t);
valor2007 = v(81 + 2 + 2);
valor1992 = v(51 + 4);
valor1970 = v(11);
valor2015 = v(101);
x = 1975:5:2010;
hold all
plot(x,y2,'o','DisplayName','Nodes originals')
plot(x,y2,'DisplayName','Lines nodes originals')
plot(1970,valor1970,'*','DisplayName','1970')
plot(1992,valor1992,'*','DisplayName','1992')
plot(2007,valor2007,'*','DisplayName','2007')
plot(2015,valor2015,'*','DisplayName','2015')
title('Nodes Belice Resultats Polinomi Grau 1')
grid on
legend('location','best')
