clc, clear all

%% Representación de Estado

% Ejercicio
% La función de transferencia de un sistema lineal es
% G(s) = (2*s^3 + s^2 + s + 2)/(s^3 + 4*s^2 + 5*s + 2)

% Hallar las cuatros matrices que describe el modelo de espacios de estado

% Calcular los polinomios del numerador y el denominador de la función
% de transferencia a partir de las matrices de espacios de estado

%% Desarrollo

% Se declara el numerador y denominador de la función de transferencia dada
num1 = [2 1 1 2];
den1 = [1 4 5 2];

% Se crea la funcion de transferencia
G1 = tf(num1,den1)

% Se extraen las matrices de los espacios de estado
[A,B,C,D] = ssdata(G1);
sys = ss(A,B,C,D)

step(sys)