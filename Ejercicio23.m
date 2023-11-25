clc, clear all

% Representación de Estado en Matlab

%% Sistema Masa Resorte
% 
% Se tiene un sistema mase resorte dado por su ecuacion diferencial: 
%     mÿ+bẏ+ky=u
% 
% Donde u es la entrada. Entonces, si decimos que:
%     x_1(t)=y(t)
%     x_2(t)=ẏ(t)
%     ẋ_1(t)=x_2(t)
% 
% Por lo tanto,
%     mẋ_2(t)+bx_2(t)+kx_1(t)=u
% 
% Y diviendo la ecuación anterior entre m
%     ẋ_2(t)+(b/m)x_2(t)+(k/m)x_1(t)=u/m
%     ẋ_2(t)=-(k/m)x_1(t)-(b/m)x_2(t)+(1/m)u
% 
% Y por ultimo, se realiza su representacion en variables de estado de la 
% siguiente forma
%     ẋ(t)=Ax(t)+Bu(t)
%     Y(t)=Cx(t)+Du(t)

%% Ejercicio 

% Consideramos el sistema de la Figura 5-30, con m=1 Kg; b= 3 N-s/m; k=2 N/m:

k = 2;
b = 3;
m = 1;

A = [0 1;-k/m -b/m];
B = [0;1/m];
C = [1 0];
D = 0;

% Se crea el modelo en espacios de estado 
representacion = ss(A,B,C,D)

% Se calcula la funcion de transferencia
[num,den] = ss2tf(A,B,C,D);
sistema = tf(num,den)
step(sistema)