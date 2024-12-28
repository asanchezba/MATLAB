clc; clear all

% Bar plot
% Data: Global CO2 emissions (2010-2020)
year = 2010:1:2020;
CO2 = [30.5824 31.4595 31.806 32.3707 32.3886 32.3655 ...
    32.3747 32.8374 33.5133 36.4568 34.0752];
bar(year,CO2,'blue');
ylim([20 40]);
xlabel('Years');
ylabel('CO2 emission (Gt)');
title('Global CO2 Emissions (2010-2020)');
grid on;
