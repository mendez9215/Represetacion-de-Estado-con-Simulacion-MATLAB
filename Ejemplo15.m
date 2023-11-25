clc, clear all

%% Representación de Estado - Observabilidad

% Un sistema se considera observable si es posible determinar todos sus
% estados a partir de la observación de sus salidas

%     [   A    ]
%     [   CA   ]
% V = [ C(A^2) ]
%     [   ...  ]
%     [C(A^n-1)]

% Ejemplo

%       [1.5  1]      
%   A = [ 1   0]  C = [2 -1]

%% Desarrollo

% Se crean las matrices de estado
A = [1.5 1; 1 0];
C = [2 -1];

% Se calcula la matriz de controlabilidad
Ob = obsv(A,C)

% Se calcula el numero de estados no controlables
unobsv = length(A) - rank(Ob)