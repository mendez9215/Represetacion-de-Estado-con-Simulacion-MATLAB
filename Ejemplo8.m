clc, clear

%% Representacion de estado

% Ejemplo

% ẋ = [0  0]x + [1]u
%     [1 -1]    [0]

% y = [2 -2]x

%% Desarrollo

% Se crea el modelo de espacios de estado
A = [0 0; 1 -1];
B = [1; 0];
C = [2 -2];
D = 0;
sys = ss(A,B,C,D);

% Se grafica la respuesta del sistema a una señal impulso de entrada
figure(1)
impulse(sys)

% Se grafica la respuesta del sistema a una señal paso de entrada
figure(2)
step(sys)