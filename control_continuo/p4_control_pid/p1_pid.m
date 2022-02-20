close all; clear, clc

s = tf('s');
G = 1 / (s^2 + 10*s + 20);

%% Control Proporcional
Kp = 1000;
CG = series(Kp,G);
L = feedback(CG,1);

step(L)