%Switch statement
clc; clear all

x = input('Enter a month:','s')
switch x
    case 'January'
        disp(['Number of days in ', x, ': 31'])
    case 'February'
        disp(['Number of days in ', x, ': 28'])
    case 'March'
        disp(['Number of days in ', x, ': 31'])
    case 'April'
        disp(['Number of days in ', x, ': 30'])
    case 'May'
        disp(['Number of days in ', x, ': 31'])
    case 'June'
        disp(['Number of days in ', x, ': 30'])
    case 'July'
        disp(['Number of days in ', x, ': 31'])
    case 'August'
        disp(['Number of days in ', x, ': 31'])
    case 'September'
        disp(['Number of days in ', x, ': 30'])
    case 'October'
        disp(['Number of days in ', x, ': 31'])
    case 'November'
        disp(['Number of days in ', x, ': 30'])
    case 'December'
        disp(['Number of days in ', x, ': 31'])
    otherwise
        disp('Enter a correct name of month')
end






