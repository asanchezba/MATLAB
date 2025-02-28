clc; clear all

% Inverting amplifier
% Find: Output voltage V_out
% Find Gain G

V_in = 40; R1 = 4; R2 = 2;
V_out = -(R2/R1)*V_in;
G = V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n', G);