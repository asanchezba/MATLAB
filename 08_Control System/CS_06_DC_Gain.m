clc; clear all

% DC Gain
% Transfer eqn: 20/(s^2+10+11)

syms s
G = @(s) 20/(s^2+10*s+11);
DC_gain = limit(G(s),s,0);
fprintf('DC gain: %f\n',DC_gain)