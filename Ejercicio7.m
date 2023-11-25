clc, clear

%% Representacion de estado

% Ejercicio

% ẋ = -x + u
% y = 2x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = -1;
B = 1;
C = 2;
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D)

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(G)

% [zz,pp,kk] = ss2zp(A,B,C,D);
% G1 = zpk(zz,pp,kk)
