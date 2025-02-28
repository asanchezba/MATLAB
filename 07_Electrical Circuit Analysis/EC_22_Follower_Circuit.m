clc; clear all

% Follower circuit
% Find output of the inverting amplifier V1
% Find final output voltage V_out

V_in = 20; R1 =4; R2 = 8;
V1 = -(R2/R1)*V_in;
fprintf('V1: %.2f V\n',V1);
V_out = V1;
fprintf('Final output voltage, V_out: %.2f V\n',V_out);