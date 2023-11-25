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

% Se crea el modelo de espacios de estados
sys = ss(A,B,C,D);

% Se obtiene el numerador y el denominador para cada funcion de
% transferencia
[num,den] = tfdata(sys,'v')

% Se crea las funciones de transferencia
G = tf(sys)
