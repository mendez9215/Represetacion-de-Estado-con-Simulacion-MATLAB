clc, clear all

%% Representación de Estado

% Ejemplo

%     [ 0  1]
% A = [-5 -2]

%     [0]
% B = [3]

% C = [0 1]

% D = [0]

%% Desarrollo

% Se crean las matrices
A = [0 1;-5 -2];
B = [0;3];
C = [0 1];
D = 0;

% Se especifica el tiempo de muestreo
Ts = 0.25;

% Se crea el modelo de espacios de estado
sys = ss(A,B,C,D,Ts);
step(sys)