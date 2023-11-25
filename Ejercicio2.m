clc, clear all

%% Representación de Estado

% En el anterior ejemplo vimos una forma de obtener los espacios de estado
% y la función de transferencia usando MATLAB en este script veremos otra
% forma en que se puede llegar al mismo resultado.

%% Ejemplo

%   ẋ(t) = Ax(t) + Bu(t)
%   y(t) = Cx(t) + Du(t)

A = [-6 -3.5; 6 4]
B = [-1; 1]
C = [4 5]
D = 0

% Se crea los espacios de estado de acuerdo a las matrices dadas
representacion = ss(A,B,C,D)

% Ahora se extrae la información que uno necesite, en este caso el
% numerador y denominador de la función de transferencia
[num,den] = tfdata(representacion,'v')

% Luego, se obtiene la función de transferencia 
G = tf(num,den)

% Se grafica la funcion de transferencia
step(G)
