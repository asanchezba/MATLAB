clc; clear all

% Impedance
% Determine impedance: Z
% Determine power factor: PF

R=10; L=0.02; C=0.05; f=60;
XL = 2*pi*f*L;
XC = 1/(2*pi*f*C);
disp('Impedance:')
Z = R+i*(XL-XC)
Imp_magnitude = abs(Z);
Phase_angle = angle(Z)*(180/pi);
disp('In polar form:');
fprintf('|Z| = %.3f ohms; Phase angle = %.3f degree\n',...
    Imp_magnitude,Phase_angle);
PF = cos(Phase_angle);
fprintf('Power factor = %.3f\n',PF);