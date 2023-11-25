clc, clear all

%%  Representación de Estado

% Ahora si es necesario obtener los espacios de estado a partir de la
% representación ZPK se puede realizar de la siguiente forma

%% Ejemplo

% Primero declaramos la función de transferencia 
zz = -2;
pp = [-3 1];
kk = 1;

% Luego se crea la variable de la funcion de transferencia 
 G = zpk(zz,pp,kk)

% Una vez se tiene la funcion de transferencia, extraen los datos del
% espacio de estado
[A,B,C,D] = ssdata(G)

representacion = ss(A,B,C,D)