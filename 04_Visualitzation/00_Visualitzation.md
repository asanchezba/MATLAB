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














