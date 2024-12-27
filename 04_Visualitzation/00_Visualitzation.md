## Visualitzation

### Line plot
A line plot is the most basic and important form of graphics. A 2D line plot can be drawn by the _plot_ command, which offers several features, and user customization options.

```matlab
plot(value,value,'Line Color Line Style Marker','Linewidth',n)
```

The above plot command will plot a 2D line of _xvalue_ vs _yvalue_, and the rest of the features are to self-customise the plot. 

_Liner Color_: The colour of the plotted line can be specified, or MATLAB will use the default colour. There are some commands for the most common colours (Table below).

<img width="722" alt="Captura de pantalla 2024-12-27 a las 13 15 12" src="https://github.com/user-attachments/assets/a9e6f8c2-9b94-491e-a36d-d7aed8e555f3" />

Apart from the colours mentioned above, MATLAB also supports all combinations of red, green, and blue (RGB) colours, which are represented by a single vector in MATLAB. An RGB colour vector ranges from (0,255) individually. Therefore, a vector of [1 120 230] defines a specific colour; thus, a wide variety of colours can be formed. 

_Line Style_: Line style defines the nature of the line that will be used to plot the 2D line plot. The line can be solid, dashed, or any other form by introducing some specific symbols (Table below). MATLAB uses a solid line as the default line style. 

<img width="722" alt="Captura de pantalla 2024-12-27 a las 16 02 03" src="https://github.com/user-attachments/assets/1bf09348-60e1-47d3-8e53-bf8859436b1a" />

_Marker_: This feature allows marking specific points in a line plot by using a customised marker (Table below). 

<img width="631" alt="Captura de pantalla 2024-12-27 a las 16 03 24" src="https://github.com/user-attachments/assets/beafcddf-19e4-44b3-8d59-30dd8cf03a24" />

_Linewidth_: The width of the plotted line can be weighted by choosing a numerical value. By default, MATLAB will choose linewidth as 1. By increasing the number, the width can be customised. The standard procedure to add a linewidth feature in the plot command is to incorporate -'_Linewidth_', _n_ - command within the plot command, where _n_ represents a numerical value referring to the level of the weight of the linewidth. 

A plot command for input _x_ and _y_, with other features, can be written as shown in Figure below.

<img width="1076" alt="Captura de pantalla 2024-12-27 a las 16 09 42" src="https://github.com/user-attachments/assets/401cf41c-dafe-4b08-a8d1-c13d4a78ae66" />

**Basic Features** 

Some basic features of visualisation are not only restricted to be used in a line plot but also for other forms of visualisation (Table below).

<img width="1062" alt="Captura de pantalla 2024-12-27 a las 16 11 50" src="https://github.com/user-attachments/assets/2679dd52-69a8-4293-99ba-b677904141bd" />

#### Example 1: Line plot
A line plot of global temperature from 2010 to 2020 is shown below. In the output Figure, the x-axis represents the year, while the y-axis represents the temperature in degrees Celsius. 

```matlab
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
```

![untitled](https://github.com/user-attachments/assets/903f69e0-0e07-42a4-9b6a-cdcf7c06c19d)

**Subplot**

Subplot is essential for visualisation when comparisons or decisions need to be made from the side-by-side display. In a subplot, multiple figures can be plotted separately in one frame side by side. For subplot multiple figures, _subplot_ command is used, where a dimension size is defined in the input to create a frame. For example, _subplot_(2,3,1) signifies the total figure window will create a subspace of two by the blocks, i.e., there will be six blocks available in the entire figure window arranged in two rows and three columns. The las numerical number 1 represents the placement -first block- where the next plot command will generate a sub-figure. 

#### Example 2: Subplot
The line plots of global temperatures over the years 2010–2020. Here, a subplot(1, 2, 1) is used before the first plot command, which signifies there will be two sub-figures in one row and two columns and the first sub-figure will be plotted in the first place. For plotting the second sub-figure in the second block (first row and second column), the subplot(1, 2, 2) command is used right after the plot command of the second plot.

```matlab
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
```

![untitled2](https://github.com/user-attachments/assets/1a3424ec-7591-41d7-b0a4-91c93b45aead)












