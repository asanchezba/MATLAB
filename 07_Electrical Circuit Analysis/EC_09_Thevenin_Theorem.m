clc; clear all

% Thevenin's theorem
% Determine Thevenin's voltage, vth
% Determine Thevenin's equivalent resistance, rth
% Determine Load current, IRL

R1=4; R2=2; R3=3; RL=5; V=10;
Vth = (R2/(R1+R2))*V;
Rth = ((R1*R2)/(R1+R2))+R3;
IRL = Vth/(Rth+RL);
fprintf('Thevenin voltage: %.3f V\n',Vth);
fprintf('Thevenin equivalent resistance: %.3f ohms\n',Rth);
fprintf('Load current: %.3f A\n',IRL);
