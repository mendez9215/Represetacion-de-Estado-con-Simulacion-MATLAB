clc, clear

%% Representacion de estado

% Ejercicio

%        [ 0  1  2  0]    [0]
%        [-3 -2  0  1]    [1]
% ẋ =    [-2  0  0  1]x + [0]u
%        [ 0  0 -1 -5]    [2]

% y = [1 0 -2 3]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 1 2 0;-3 -2 0 1;-2 0 0 1;0 0 -1 -5];
B = [0; 1; 0; 2];
C = [1 0 -2 3];
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D)

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(G)

[zz,pp,kk] = ss2zp(A,B,C,D);
G1 = zpk(zz,pp,kk)