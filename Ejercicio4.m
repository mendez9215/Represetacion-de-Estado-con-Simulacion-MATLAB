clc, clear all

%%  Representación de Estado

% Ahora si es necesario obtener los espacios de estado a partir de una
% función de transferencia se puede realizar de la siguiente forma

%% Ejemplo

% Primero declaramos la función de transferencia 
num = [0 1 2];
den = [1 2 -3];

% Luego se crea la variable de la funcion de transferencia 
 G = tf(num,den)

% Una vez se tiene la funcion de transferencia, extraen los datos del
% espacio de estado
[a,b,c,d] = ssdata(G)

representacion = ss(a,b,c,d)