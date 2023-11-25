clc, clear

%% Representacion de estado

% Ejercicio

%        [-3 1 0]    [2]
% ẋ =    [-2 0 0]x + [4]u
%        [ 1 0 0]    [1]

% y = [1 0 0]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [-3 1 0;-2 0 0; 1 0 0];
B = [2; 4; 1];
C = [1 0 0];
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D)

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(G)
 
% [zz,pp,kk] = ss2zp(A,B,C,D);
% G1 = zpk(zz,pp,kk)
