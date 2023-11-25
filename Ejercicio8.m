clc, clear

%% Representacion de estado

% Ejercicio

% ẋ = [0  0]x + [1]u
%     [1 -1]    [0]

% y = [2 -2]x

%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 0; 1 -1];
B = [1; 0];
C = [2 -2];
D = 0;

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D)

[num,den] = ss2tf(A,B,C,D);
G = tf(num,den)

step(sys)

% [zz,pp,kk] = ss2zp(A,B,C,D);
% G1 = zpk(zz,pp,kk)
