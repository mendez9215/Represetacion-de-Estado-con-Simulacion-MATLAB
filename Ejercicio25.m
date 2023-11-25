clc, clear all

%% Representación de estado

% En este script se va a realizar un ejercicio que se puede encontrar en la
% plataforma de MATLAB, se hará uso de las funciones de Control System 
% Toolbox descritas en el video.

% https://la.mathworks.com/videos/state-space-models-part-1-creation-and-analysis-100815.html

% Ejercicio

% Se construira el modelo de espacios de estado para un motor DC, al cual
% se le aplica un voltaje V en la entrada

%% Desarrollo

% Primero se crean las variables de los parametros del motor
J = 0.01;
Kb = 0.01;
Kf = 0.1;
Km = 0.01;
L = 0.5;
R = 1;

% Primero, se construyen las matrices de los espacios de estado
A_motor = [-Kf/J Km/J; -Kb/L -R/L];
B_motor = [0; 1/L];
C_motor = [1 0];
D_motor = 0;

% Ahora, se crea el modelo de espacios de estado
motor = ss(A_motor, B_motor, C_motor, D_motor)

% Se crea la amplificacion de voltaje representada por una función de
% transferencia de primer orden
amp = tf(5,[1/1000 1])

% Luego se crea el modelo de la planta
planta = motor * amp

% Se pueden saber los polos del sistema con la función pole, de acuerdo a 
% esto se puede saber si el sistema es estable
pole(planta)

% Otra forma de saberlo es mediante la función isstable, que retorna un
% valor logico
isstable(planta)

% Ahora, analizamos la respuesta del sistema a la entrada de voltaje de un
% paso unitario
step(planta)
