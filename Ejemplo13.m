clc, clear all

%% Representación de Estado - Análisis de Estabilidad

% Control System Toolbox permite realizar un análisis de estabilidad para
% sistemas lineales, en este caso MATLAB nos proporciona un ejemplo del uso
% de algunas comandos para determinar la estabilidad de un sistema en su
% representación de espacios de estado.

% Si se descomenta la siguiente linea y se corre se puede abrir el codigo
% proporcionado por MATLAB
% openExample('control/StabilityAnalysisOfStateSpaceSystemsExample')

%% Ejemplo

% Se crea un objeto de espacios de estado
A = [-1.2,-1.6,0;1,0,0;0,1,0];
B = [1;0;0];
C = [0,0.5,1.3];
D = 0;
sys = ss(A,B,C,D);

% Ahora, se calcula el sistema para un modelo de espacios de estado en lazo
% cerrado
sysFeedback = feedback(sys,1);

% Con el comando pole se obtienen los polos en el sistema
P = pole(sysFeedback)

% Cuando se tiene que la parte real de los polos es negativa, nos indica
% que se tiene un sistema estable

% Puede ser util saber cuán robusta o frágil es la estabilidad. Una
% indicación de robustez es la variacion que puede tener la ganancia (k)
figure (1)
rlocus(sys)

% Se grafica la respuesta a una entrada paso en el sistema, con k = 1
figure (2)
step(sysFeedback)

% Asumiendo la ganancia como k = 5
sysFeedback = feedback(5*sys,1);
figure (3)
step(sysFeedback)