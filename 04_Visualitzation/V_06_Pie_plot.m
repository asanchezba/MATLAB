clc; clear all

% Pie Plot
% Data: Electricity consumption by different sectors in USA (2018)
% x: Percentage of Consumption in four different sectors in USA
x = [35.4,25.9,2,38.5];
subplot(1,2,1);
pie(x);
title('Without explode feature');
subplot(1,2,2);
explode = [1,1,1,1];
pie(x,explode);
title('With explode feature');
labels = {'Commercial','Industrial','Transportation','Residential'};
legend(labels,'Location','best');
