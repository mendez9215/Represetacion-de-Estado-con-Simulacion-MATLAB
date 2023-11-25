clc, clear all

%% Representación de Estado

% Ejercicio
% Se tiene el siguiente modelo zpk de un sistema lineal es

% G(s) = G(s)=(-2s)/(s-1-i)(s-1+i)(s-2) 


%% Desarrollo

% Se declara los ceros, polos y ganancia del sistema
z = 0;
p = [1-1i 1+1i 2];
k = -2;
G = zpk(z,p,k);

% Se extraen las matrices de los espacios de estado
[A,B,C,D] = ssdata(G);
sys = ss(G)