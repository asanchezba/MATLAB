clc; clear all

% Transistor Circuit
% Determine collector current I_C
% Determine base current I_B

I_E = 10; alpha = 0.8;
I_C = alpha*I_E;
I_B = I_E-I_C;
fprintf('Collector current: %.3f mA\n',I_C);
fprintf('Base current: %.3f mA\n',I_B);