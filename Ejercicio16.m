clc, clear all

%% Representacion de estado

% Ejercicio

% ẋ = [-4 -1]x + [1]u
%     [ 3 -1]    [1]

% y = [1 0]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [-4 -1;3 -1];
B = [1; 1];
C = [1 0];
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D);

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(G)