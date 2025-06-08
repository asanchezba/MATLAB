% Initial value problem
% Transfer eqn: (2+6*s+2*s^2)/(2*s*(s+2)^2)
clc; clear;

syms s
G = @(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Initial_val = limit(s*G(s),s,Inf);
fprintf('Initial value: %.3f\n',Initial_val)
%% 

%Final value problem
% Transfer eqn: (2+6*s+2*s^2)/(2*s*(s+2)^2)
clc; clear;

syms s
G = @(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Final_val = limit(s*G(s),s,0);
fprintf('Final value: %.3f\n',Final_val)