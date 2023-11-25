clc, clear all

%% Representación de Estado

% las ecuaciones diferenciales de mayor orden ahora son escritas en una
% conjunto de ecuaciones diferenciales de primer orden. Este conjunto de
% ecuaciones diferenciales se suele representar de la siguiente forma:

%   ẋ(t) = Ax(t) + Bu(t)        (Ecuación de estado)
%   y(t) = Cx(t) + Du(t)        (Ecuación de salida)

% Donde x, A, B, C son vectores o matrices. Y su tamaño, depende de la
% catidad de variables de estado en el sistema. El tamaño de la matriz D, 
% depende de el numero de entrada y salidas del sistema. Es un escalar 
% cuando se tiene un sistema de una entrada y una salida.

% Para empezar a resolver las ecuaciones de estado se calcula su
% transformada de Laplace y despues se obtiene su función de transferencia,
% teniendo en cuenta que:

%   Y(s) = G(s) * U(s)

% Asumiendo x(0) = 0, se tiene que:

%   ẋ(t) = Ax(t) + Bu(t)      -->     s*X(s) = A*X(s) + B*U(s)
%   y(t) = Cx(t) + Du(t)      -->     Y(s) = C*X(s) + D*U(s)

% Desarrollando las anteriores ecuaciones se obtiene:

%   X(s) = [sI-A]^-1*B*U(s)
%   Y(s) = C*[sI-A]^-1*B*U(s) + D*U(s)

% Por ultimo se despeja la función de transferencia

% G(S) = C*[sI-A]^-1*B + D
%% Ejemplo

%   ẋ(t) = Ax(t) + Bu(t)
%   y(t) = Cx(t) + Du(t)

A = [-6 -3.5; 6 4]
B = [-1; 1]
C = [4 5]
D = 0

% Primero, se crea los espacios de estado de acuerdo a las matrices dadas
representacion = ss(A,B,C,D)

% Ahora, se usa la función ss2tf para obtener el numerador y el denominador
% de la función de transferencia
[num,den] = ss2tf(A,B,C,D);

% Luego, se obtiene la función de transferencia 
G = tf(num,den)

% Se grafica la funcion de transferencia
step(G)

