clc, clear all

%% Representacion de estado

% Ejercicio

% ẋ = [-5 -1]x + [2]u
%     [ 3 -1]    [5]

% y = [1 2]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [-5 -1;3 -1];
B = [2; 5];
C = [1 2];
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D);

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(G)