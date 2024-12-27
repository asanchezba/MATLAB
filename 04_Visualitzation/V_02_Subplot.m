clc; clear all

% Subplot
% Data of global temperature from 2010:2020
% Temperature unit: degree celcius and farenhite

year = 2010:1:2020;
temp_C = [14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
    14.88 14.89 15.05 14.78];
temp_F = [58.028 58.19 58.064 58.406 58.676 59.288 ...
    58.694 58.78 58.802 59.09 58.604];
subplot (1,2,1);
plot(year,temp_C,'b-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (degree celcius)');
title('Global temperature (2010-2020)')
grid on;
subplot(1,2,2);
plot(year,temp_F,'k-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (farenhite)');
title('Global temperature (2010-2020)')
grid on;