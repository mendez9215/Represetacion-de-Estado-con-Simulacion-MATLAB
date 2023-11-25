clc, clear all

%% Representación de Estado - Sistema Eléctrico

% Para un circuito RLC en serie se tiene que 

%   e_o'' + (R/L)e_o' + (1/LC)e_o = e_i

% Definiendo variables de estado a la ecuación diferencial anterior se
% obtiene el siguiente modelo de espacios de estado

% ẋ = [   0       1  ]x + [  0 ]u
%     [(-1/LC) (-R/L)]    [1/LC]

% y = [1 0]x

%% Ejemplo

% Se crean las variables R, L, C
R = 2;
L = 1;
C = 0.5;

% Se crea el modelo en espacios de estado
A = [0 1; -1/(L*C) -(R/L)];
B = [0; 1/(L*C)];
C = [1 0];
D = 0;
circuito = ss(A,B,C,D);

% Se grafica la respuesta en el tiempo
step(5*circuito)