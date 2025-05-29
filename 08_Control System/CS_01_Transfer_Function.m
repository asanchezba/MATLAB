clc; clear all

% Example 1: Transfer Function
G = tf([1 50],[1 11 12]);
disp('Transfer function:')
G

% Alternative display
syms s
G = @(s)(s+50)/(s^2+11*s+12);
disp('Transfer function:')
disp(G(s))