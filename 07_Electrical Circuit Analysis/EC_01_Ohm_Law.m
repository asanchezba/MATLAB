clc; clear all

% Ohm's Law: V=IR
% Voltage, V=[1:10]
% Resistance, R=5 ohms
% Plot voltage vs current
V = 1:10;
R = 5;
I = V/R;
plot(V,I,'o-b','LineWidth',1.2);
xlabel('Voltage, Volt');
ylabel('Current, Amp');
title('Ohms Law');
grid on;

