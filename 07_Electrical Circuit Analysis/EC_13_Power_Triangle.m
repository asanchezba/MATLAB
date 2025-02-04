clc; clear all

% Power triangle
% Find: Apparent power, S
% Find: Power factor, PF

%Example 1: Real power, P=10W; Reactive power, Q=5 Var
fprintf('Example 1: Positive reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = 5;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');

%Example 2: Real power, P=10W; Reactive power, Q=-5 Var
fprintf('Example 2: Negative reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = -5;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');

%Example 3: Real power, P=10W; Reactive power, Q=0 Var
fprintf('Example 2: Zero reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = 0;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');