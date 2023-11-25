clc, clear all

%% Representacion de estado

% Ejercicio

% Considere el siguiente sistema con multiples entradas y multiples salidas
% ẋ = [ 0   1]x + [1 1]u
%     [-25 -4]    [0 1]

% y = [1 0]x
%     [0 1]

% Este sistema tiene dos entradas y dos salidas
%% Desarrollo

% De acuerdo al ejercicio dado se identifican las matrices A,B,C,D 
A = [0 1;-25 -4];
B = [1 1; 0 1];
C = [1 0; 0 1];
D = [0 0; 0 0];

% Se obtienen los espacios de estado y su funcion de transferencia
sys = ss(A,B,C,D);

% Usando la funcion size se puede obtener la cantidad de entradas, salidas
% y estados en el sistema
size(sys)

% Se obtienen los datos de las funciones de transferencia
[num1,den1] = ss2tf(A,B,C,D,1);
[num2,den2] = ss2tf(A,B,C,D,2);

% Se obtiene la funcion de transferencia de acuerdo a las dos entradas y
% dos salidas
G1 = tf(num1(1,1:3),den1)
G2 = tf(num2(2,1:3),den1)
G3 = tf(num2(1,1:3),den2)
G4 = tf(num2(2,1:3),den2)

% Se grafican todas las funciones de transferencia
figure(1)
step(G1)
hold on
step(G2)
hold on
step(G3)
hold on
step(G4)
hold on
legend('G1','G2','G3','G4')

