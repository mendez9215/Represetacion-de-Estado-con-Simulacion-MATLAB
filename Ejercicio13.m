clc, clear all

%% Representación de Estado

% Ejercicio
% La función de transferencia de un sistema lineal es
% T(s) = (2*s^2 + 4*s + 1)/(3*s^4 + 8*s^3 + 9*s^2 + 10*s)

% Hallar las cuatros matrices que describe el modelo de espacios de estado

% Calcular los polinomios del numerador y el denominador de la función
% de transferencia a partir de las matrices de espacios de estado

%% Desarrollo

% Se declara el numerador y denominador de la función de transferencia dada
num1 = [2 4 1];
den1 = [3 8 9 10 0];

% Se crea la funcion de transferencia
T1 = tf(num1,den1)

% Se extraen las matrices de los espacios de estado
[A,B,C,D] = ssdata(T1);
G = ss(A,B,C,D)

% Ahora se obtiene de nuevo la funcion de transferencia
[num2,den2] = tfdata(G,'v');
T2 = tf(G)

