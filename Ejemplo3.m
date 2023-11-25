clc, clear all

%% Representación de estado

% Ejemplo

%     [ 0   1]    [1 0]
% ẋ = [-2  -3]x + [0 1]u


% y = [1 0]x + [0 0]u

%% Desarrollo

% Se declaran las matrices A,B,C,D
A = [0 1; -2 -3];
B = [1 0; 0 1];
C = [1 0];
D = [0 0];

% Se obtiene el numerador y el denominador para cada funcion de
% transferencia
[num1,den1] = ss2tf(A,B,C,D,1)
[num2,den2] = ss2tf(A,B,C,D,2)

% Se crea las funciones de transferencia
G1 = tf(num1,den1)
G2 = tf(num2,den2)