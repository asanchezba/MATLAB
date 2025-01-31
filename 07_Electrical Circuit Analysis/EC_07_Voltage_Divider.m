clc; clear all

% Voltage Divider
% Determine the voltage across the resistances R2 and R3

R1=2; R2=4; R3=8; E=24;
VR2 = (R2/(R1+R2+R3))*E;
VR3 = (R3/(R1+R2+R3))*E;
fprintf('Voltage across the resistance R2: %.3f V\n',VR2);
fprintf('Voltage across the resistance R3: %.3f V\n',VR3);