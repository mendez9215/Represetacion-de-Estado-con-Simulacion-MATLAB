clc, clear all

%% Representación de Estado

% Ejercicio
% La función de transferencia de un sistema lineal es

% T(s) = (2*s^2 + 4*s + 1)/(3*s^4 + 8*s^3 + 9*s^2 + 10*s)


%% Desarrollo

% Se declara el numerador y denominador de la función de transferencia dada
num = [2 4 1];
den = [3 8 9 10 0];

% Se crea la funcion de transferencia
T = tf(num,den);

% Se extraen las matrices de los espacios de estado
[A,B,C,D] = ssdata(T);
G = ss(A,B,C,D)