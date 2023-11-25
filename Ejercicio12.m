clc, clear all

%% Representacion de Estado

% Ejercicio
% La función de transferencia de un sistema lineal tiene ceros en s = -1,
% -4+j2, -4-j2, polos en s = -0.6, -1+j8, -1+j8, -15, y una ganancia de 2.

%% Desarrollo

% Primero, se declaran las variables zpk
zz = [-1 -4+2*i -4-2*i];
pp = [-0.6 -1+8*i -1-8*i -15];
kk = 2;

% Ahora se crea la funcion 
G = zpk(zz,pp,kk)

% Por ultimo, se extraen las matrices para los espacios de estado
[A,B,C,D] = ssdata(G);
sys = ss(A,B,C,D)

% Graficando ambas funciones
figure(1)
step(G)
figure(2)
step(sys)
