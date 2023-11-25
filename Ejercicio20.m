clc, clear all

%% Representacion de estado

% Ejercicio

%     [ 0  1  0]    [0 0]
% ẋ = [ 0  0  1]x + [0 1]u
%     [-2 -4 -6]    [1 0]

%     [1 0 0]
% y = [0 1 0]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 1 0; 0 0 1; -2 -4 -6];
B = [0 0; 0 1; 1 0];
C = [1 0 0; 0 1 0];
D = [0 0; 0 0];

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D);
size(sys)

% Se obtienen las funciones de transferencia del sistema
G = tf(sys)

% Se grafican todas las funciones de transferencia
step(G)
