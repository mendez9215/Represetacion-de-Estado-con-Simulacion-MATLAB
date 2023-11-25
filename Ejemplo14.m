clc, clear all

%% Representación de Estado - Controlabilidad

% Un sistema se considera controlabale si en un tiempo finito mediante una
% señal de entrada no restringida se obtiene un cambio de un estado inicial
% a un estado final

% S = [B AB (A^2)B ... (A^n-1)B]

% Ejemplo

%       [1  1]      [1 -1]
%   A = [4 -2]  B = [1 -1]

%% Desarrollo

% Se crean las matrices de estado
A = [1  1; 4 -2];
B = [1 -1; 1 -1];

% Se calcula la matriz de controlabilidad
Co = ctrb(A,B)

% Se calcula el numero de estados no controlables
unco = length(A) - rank(Co)