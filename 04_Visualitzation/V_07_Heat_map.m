clc; clear all

% Heat map
% Data: Electricity day-ahead market price 
% LMP: Local Marginal Price ($/MW)
% Date: Jan-01-2019 to Jan-07-2019
% Time: 10 AM to 3 PM

LMP = [38.8 38.5 39.6 42.8 42.8 40.8; ...
    42.2 42.4 43.4 45.0 58.0 55.3; ...
    40.4 39.6 41.4 44.0 56.9 50.9; ...
    38.8 39.5 40.0 43.6 55.3 48.5; ...
    36.6 36.5 36.5 38.2 39.4 39.6; ...
    32.7 33.1 34.5 35.0 36.5 34.9; ...
    32.3 33.5 35.1 39.4 48.2 56.0];

Time = {'10 AM', '11 AM', '12 PM', '01 PM', '02 PM', '03 PM'};
Date = {'Jan-01', 'Jan-02', 'Jan-03', 'Jan-04', 'Jan-05', 'Jan-06', 'Jan-07'};
H = heatmap(Time,Date,LMP);
H.Title = 'Electricity day-ahead market price ($/MW)'
H.XLabel = 'Time';
H.YLabel = 'Date';

