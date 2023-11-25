clc, clear all

%% Representación de estado

% También algunas veces se requiere analizar un sistema a partir de sus
% ceros, polos y ganancia (ZPK, Zero-Pole-Gain).

%% Ejemplo

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

% Se grafica la funcion de transferencia
figure(1)
step(G)

% Graficando los ceros y polos
figure(2)
plot(real(zz),imag(zz),'*')
hold on
plot(real(pp),imag(pp),'*')
legend('Ceros','Polos')