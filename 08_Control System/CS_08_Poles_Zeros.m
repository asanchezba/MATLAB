clc; clear all

%Poles/zeros
% Transfer function: (s+50)/(s^2+11s+12)

G = tf([1 50],[1,11,12]);
disp('Transfer function:')
G
poles = pole(G)
zeros = zero(G)

%Pole-zero map
pzmap(G)
grid on