# Complex Numbers

## Introduction
The general form of a complex number is **a + i * b**, where _i_ refers to the imaginary unit, which is represented as i = sqrt(-1). 

### Regular Form
The rectangular form of a complex number can be represented as **C = a + i * b**, where _i_ is the imaginary number, _a_ and _b_ are coefficients and _C_ represent the complex number. In this complex, there are two parts: real and imaginary parts. _a_ represents the real part, whereas _b_ indicates the imaginary part. 
The formula mentioned above can generate the complex number if the real and imaginary values are known. 

### Polar Form
The polar form of any complex number is

<img width="131" alt="Captura de pantalla 2024-09-29 a las 20 00 30" src="https://github.com/user-attachments/assets/bff36a21-a79a-4868-bdf5-93001b423614">

Here, |C| is the absolute value or magnitude of the complex number and θ represents the angle. The absolute value is given by |C| = sqrt(a^2 + b^2) and the angle is given by θ = b/a rad = (b/a) X 180º/π degree. 

```matlab
%Recntangular complex number
a = 2;
b = 3;
C1 = a + i*b
C2 = complex(a,b)

%Polar complex number
[C_angle, C_mag] = cart2pol(a,b);
C_angle = C_angle*(180/pi);
C_polar = [C_mag, C_angle]

C_mag2 = sqrt(a^2 + b^2);
C_angle2 = atan(b/a)*(180/pi);
C_polar2 = [C_mag2, C_angle2]

C_mag3 = abs(C2);
C_angle3 = angle(C2)*(180/pi);
C_polar3 = [C_mag3, C_angle3]
```
To convert a complex number from rectangular to polar, we can use the above formula or the MATLAB unbuilt functions _abs()_ and _angle()_. Another way is to use _cart2pol()_. 

## Euler's Series
Euler's formula provides a relationship between trigonometric and exponential terms. 

<img width="322" alt="Captura de pantalla 2024-10-26 a las 20 05 19" src="https://github.com/user-attachments/assets/b7bf22f4-8607-4fb4-a142-433c95e55a66">

Where _e_ is the base of the natural logarithm, _x_ is any real number, and _i_ is the imaginary unit. 

As mentioned above, it is possible to convert a complex number from its polar form to cartesian form by using the following relationship:
a = |C| * cos(cosθ)

b = |C| * sin(sinθ) 




