clc, clear

%% Representacion de estado

% Ejercicio

% ẋ = [0  1]x + [-1]u
%     [3 -2]    [ 1]

% y = [4 5]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 1; 3 -2];
B = [-1; 1];
C = [4 5];
D = 0;

% Se obtienen los espacios de estado
sys = ss(A,B,C,D)

% Se obtiene la función de transferencia
[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

figure (1)
step(G)

% % Ahora, considerando que se tiene una señal paso de entrada
% U = tf(1,[1 0])
% figure (2)
% step(G*U)

