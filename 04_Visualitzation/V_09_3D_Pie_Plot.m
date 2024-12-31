clc; clear all

% 3D Pie plot
% Data: electricity consumption by different sectors in USA (2018)
x = [35.4, 25.9, 2, 38.5];
explode = [0,0,1,0];
pie3(x,explode);
title('Electricity consumption by different sectors in USA (2018)')
labels = {'Commercial', 'Industrial', 'Transportation', 'Residential'};
legend(labels,'Location','best');