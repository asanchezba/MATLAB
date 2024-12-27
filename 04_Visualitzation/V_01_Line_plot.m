clc, clear all

% Line Plot
% Data: Global temperature in degree celcius (2010-2020)
year = 2010:1:2020;
temp = [14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
    14.88 14.89 15.05 14.78];
plot(year,temp,'b-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (Degree celcius)');
title('Line plot of global temperature (2010-2020')
grid on;

