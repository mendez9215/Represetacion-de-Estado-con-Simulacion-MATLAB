clc, clear all

%% Representación de estado

% Ejemplo

%     [ 0  1  0]    [0]
% ẋ = [ 0  0  1]x + [0]u
%     [-1 -4 -2]    [2]

% y = [1 -3 2]x + 0.5

%% Desarrollo

% Se declaran las matrices A,B,C,D
A = [0 1 0; 0 0 1; -1 -4 -2]
B = [0; 0; 2]
C = [1 -3 2]
D = 0.5

% Se crea el modelo en espacios de estado
sys = ss(A,B,C,D)
