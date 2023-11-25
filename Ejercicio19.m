clc, clear all

%% Representacion de estado

% Ejercicio

% Considere el siguiente sistema con multiples entradas y multiples salidas
% ẋ = [ 0   1]x + [1 1]u
%     [-25 -4]    [0 1]

% y = [1 0]x
%     [0 1]

% Este sistema tiene dos entradas y dos salidas
%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 1;-25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D);
size(sys)

% Otra forma de calcular las funciones de transferencia de un sistema de
% multiples entradas y multiples salidas
G = tf(sys)

% Graficando las funciones de transferencia
step(G)
