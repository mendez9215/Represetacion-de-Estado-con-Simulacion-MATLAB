clc, clear all

%% Representación de estado

% Ejemplo

%     [-6  -3.5]    [-1]
% ẋ = [ 6    4 ]x + [ 1]u


% y = [4 5]x
%% Desarrollo

%   ẋ(t) = Ax(t) + Bu(t)
%   y(t) = Cx(t) + Du(t)

A = [-6 -3.5; 6 4];
B = [-1; 1];
C = [4 5];
D = 0;

% Se crea los espacios de estado de acuerdo a las matrices dadas
representacion = ss(A,B,C,D);

% Ahora se extrae la información que uno necesite, en este caso el
% numerador y denominador de la función de transferencia
[zz,pp,kk] = zpkdata(representacion,'v')

% Luego, se obtiene la función de transferencia 
G = zpk(zz,pp,kk)