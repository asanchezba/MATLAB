## 8.1. Introduction
<p align="justify">
The study of control systems is required to govern the behaviour of any physical system, where the behaviour can be regarded as the response or the output of that system. In control systems, one of the objectives is to regulate the response with respect to the input of that system. The response of a physical system can be represented mathematically either in the frequency domain or the time domain. The concepts of both of these domains in control systems will be explained in this chapter. To implement the concepts of control systems, it is required to convert any physical system to a mathematical representation. The opposite can also be necessary for various aspects. In this chapter, the concept of state-space representation, which can be used to convert any physical system to a mathematical model, will be demonstrated. 
</p>

## 8.2. Frequency Response Overview
<p align="justify">
Control systems are mostly associated with signals, because by understanding the signals and their response by the system, one can easily control different aspects of the complete system. These systems may be exposed to the signals of different frequencies, the response for which is important to comprehend and eventually control the system. The frequency response can therefore be stated as the output of a system to a waveform of a particular frequency. More specifically, the frequency response can provide more information on the amplitude response and phase response of a system.
</p>

<p align="justify">
A system in control system is commonly represented either in a time domain, an s-domain, or a frequency domain. In the s-domain, the system is represented by a parameter called $$s$$, which is represented by a transfer function, and which can be derived from a time domain system through the Laplace transform. A frequency domain, on the other hand, provides specific details on the amplitude and phase of the system. This can be determined from the s-domain by replacing $$s$$ with $$j &omega;$$, where $$&omega;$$ is the frequency of the input signal. 
</p>

### 8.2.1. Linear Time-Invariant System
<p align="justify">
Linear time-invariant (LTI) systems refer to a certain group of systems with two distinctive characteristics: **linearity** and time **invariance**. Linearity is when the output of the system is linearly related to the output. If we focus on Figure 1, the first output is $$y_{1}(t)$$, and the input is $$x_{1}(t)$$, whereas the second output and the input of the system is $$y_{2}(t)$$ and $$x_{2}(t)$$ respectively. The linear characteristic of the system can be realised by observing the third inputs and outputs. Here, the given input is the combination of the previous two inputs—(a) and (b). Due to the linearity property, the output of the system changes linearly according to the changes made in the inputs, i.e., the output has also become the combination of the outputs of (a) and (b). Such linear characteristic is one of the characteristics of the LTI system.
</p>

<p align="center"><img width="663" alt="Captura de pantalla 2025-04-18 a las 18 44 41" src="https://github.com/user-attachments/assets/ff2ec02b-11a6-4051-aa11-a09ab169cc3c" /></p>
<p align="center"> <em>Figure 1: Illustration of linearity </em></p>

<p align="justify">
Another characteristic of an LTI system is its invariance. If the input is applied at a different timing, the output will not be dependent on that timing. Consider a system that produces $$y(t)$$ output for an input $$x(t)$$. If a time shift occurs in the input, such as $$x(t+1)$$, the produced output will remain the same with the same time shift, i.e., $$y(t+1)$$, as shown in Figure 2.
</p>

<p align="center"><img width="844" alt="Captura de pantalla 2025-05-20 a las 20 03 42" src="https://github.com/user-attachments/assets/e4c4e6c2-e280-4a70-825a-7dc00fa670fb" /></p>
<p align="center"> <em>Figure 2: Illustration of time invariance </em></p>

### 8.2.2. Transfer Function
<p align="justify">
A system's transfer function can be defined as the ratio of the Laplace transform of output to the Laplace transform of input. Consider the following system in Figure 3, where $$Y(s)$$ represents the Laplace transform of the output $$y(t)$$ and $$X(s)$$ is the Laplace transform of the output $$x(t)$$.
</p>

<p align="center"><img width="645" alt="Captura de pantalla 2025-05-20 a las 20 07 52" src="https://github.com/user-attachments/assets/9709f611-7764-4e45-af06-e6103fd22b0d" /></p>
<p align="center"> <em>Figure 3: Illustration of transfer function </em></p>

Hence, the transfer function of the system can be referred to as follows:

$$G(s) = \frac{Y(s)}{X(s)}$$

In MATLAB the transfer function can be created using $$tf()$$, where the input is a matrix representing the coefficients of the numerator and the denominator.

```matlab
if([Numerator], [Denominator])
```
<p align="justify">
Here, in $$[Numerator]$$ the coefficients of $$s$$ need to be incorporated starting from the highest degree to the lowest degree as a row vector. For $$[Denominator]$$, the same process applies; however, the denominator represents the input and the numerator represents the output of the system, both in the Laplace transformation form.
</p>

#### Example 1: Transfer Function
Create the following transfer function

$$G(s) = \frac{s+50}{s^2+11s+12}$$

```matlab
% Example 1: Transfer Function
G = tf([1 50],[1 11 12]);
disp('Transfer function:')
G

% Alternative display
syms s
G = @(s)(s+50)/(s^2+11*s+12);
disp('Transfer function:')
disp(G(s))
```

### 8.2.3. Laplace Transform
The Laplace transformation is used to convert any time-domain signal into a frequency-domain, or s-domain, output. One of the benefits is that it can convert any differential equation into a simple algebraic equation in its frequency domain. 

In MATLAB, the Laplace transfomr of any time domain equation can be converted into an s-domain equation by using the following comand:

```matlab
laplace(g)
```

#### Example 2: Laplace Transform
Consider the following function for performing the Laplace transform

$$g(t) = e^{3t} *sin(6t)$$

```matlab
% Example 2: Laplace Transform
syms t s
g = @(t) exp(3*t)*sin(6*t);
disp('Laplace transform:')
G(s)=laplace(g(t))
```
Laplace transform can also be utilised for solving initial value problems involving differential equations. The Laplace transform of derivative terms can be determined using the following formula:

$$y^n(t) = s^nY(s) - s^{n-1} y(0) - s^{n-2} y'(0) - s^{n-3} y''(0) ... - y^{n-1}(0)$$

where $$n = 1, 2, 3, ...$$ Here, $$y^n$$ represents the nth derivative of $$y(t). Using the above formula, the Laplace transform of the first, second, and third derivarive terms are listed in Table 1, as these are the most commonly used terms in the initial value problems.

<p align="center"> <em>Tabble 1: Differential terms and the corresponding Laplace transforms </em></p>
<p align="center"><img width="925" alt="Captura de pantalla 2025-05-29 a las 20 12 50" src="https://github.com/user-attachments/assets/fd7ea418-6ab6-487d-af4a-2673c3522904" /></p>

#### Example 3: Laplace Transform of Initial Value Problem with Differential Equation
Solve the following initial value problem using Laplace transform

$$3y'''(t) + 2y''(y) + 3y(t) = 1; y(0) = y'(0) = 0; y''(0) = 1$$

```matlab
% Example 3: Laplce Transform of Initial Value Problem
% 3*y'''(t) + 2*y''(t) + 3y(t) = 1
% Initial condition: y(0)=0;y'(0)=0;y''(0)=1;

syms s Y

%Initial conditions
y0=0;dy0=0;dy20=1;

Y1 = @(s) s*Y-y0;
Y2 = @(s) s^2*Y-s*y0-dy0;
Y3 = @(s) s^3*Y-s^2*y0-s*dy0-dy20;

% Differential equation
eqn = 3*Y3(s)+2*Y2(s)+3*Y-laplace(1,s);
solve(eqn,Y)
```

### 8.2.4. Inverse Laplace Transform
To convert the frequency domain output back into its original time domain input, an inverse Laplace transform is required. The command for invers Laplace transfomr in MATLAB is as follows:

```matlab
ilaplace(G)
```

#### Example 4: Inverse Laplace Transform 
Consider the following function for performing inverse Laplace transform

$$G(s) = \frac{6}{(s-3)^2 + 36}$$

```matlab
% Example 4: Inverse Laplace Transform
syms t s
G = @(s) 6/((s-3)^2+36);
disp('Inverse laplace transform:')
g(t) = ilaplace(G(s))
```

### 8.2.5. Partial Fraction
Partial fraction decomposition is a method through which any rational fraction can be broken down in terms of simpler fractions to make the computations easier. The generalised format of a rational fraction and its partial fraction expansion is stated below:

$$F(s) = \frac{N(s)}{D(s)} = \frac{N_{n}·s^n + N_{n-1}·s^{n-1} + ... + N_{1}·s + N_{0}}{D_{m}·s^m + D_{m-1}·s^{m-1} + ... + D_{1}·s + D_{0}}$$

$$Partial fraction expansion = \frac{r_{m}}{s-p_{m}} + \frac{r_{m-1}}{s-p_{m-1}} + ... + \frac{r_{1}}{s-p_{1}} + k(s)$$

Here, $$N(s)$$ and $$D(s)$$ represent the numerator and denominator terms. $$N = [N{n}, N{n-1} ... N{0}]$$ and $$D = [D_{n}, D{n-1} ... D{0}]$$ indicate two row vectors containing the coefficients of $$s$$ for numerator and denominator, respectively. These two vectors are the input of MATLAB for determining the residuals ($$r = [r{m}, r{m-1} ... r{1}]$$), poles ($$p = [p{m}, p{m-1} ... p{0}]$$), and coefficients ($$k = [k{m}, k{m-1} ... k{0}]$$) of polynomials of the partial fraction expansion. 

The MATLAB command for partial fraction expansion is:
```matlab
[r,p,k] = residue(N,D)
```

A rational fraction can be proper or improper, based on which the steps for determining partial fraction decompositions vary. The conditions of the proper and improper rational fraction are provided in Table 2. For the third case, when the highest degree for both the numerator and the denominator becomes equal, the fraction can either be proper or improper based on certain conditions. To illustrate the conditions clearly, let's consider the following rational fraction $$F(s)$$, where the highest degree for both numerator and denominator is $$n$$:

$$F(s) = \frac{a_{1}·s^n + a_{2}·s^{n-1} + ... + a_{n-1}·s + a_{0}·s^0}{b_{1}·s^n + b_{2}·s^{n-1} + ... + b_{n-1}·s + b_{n}·s^0}$$

For the above-generalised fraction, the recognition of proper and improper fractions can be made by the steps incorporated in Table 3. Two more examples are provided in Table 4.

<p align="center"><em> Table 2: The conditions of the proper and improper rational fraction </em></p>
<p align="center"><img width="918" alt="Captura de pantalla 2025-05-30 a las 20 07 50" src="https://github.com/user-attachments/assets/57f015ee-61bc-49cb-80ce-d5a6557a3195" /></p>

<p align="center"><em> Table 3: Conditions for being proper and improper fraction when the highest degree for both in the numerator and the denominator is equal </em></p>
<p align="center"><img width="1300" alt="Captura de pantalla 2025-05-30 a las 20 16 40" src="https://github.com/user-attachments/assets/b85fd17c-ba82-42c2-8064-b5da10083f6a" /></p>

<p align="center"><em>Table 4: Examples of fractions </em></p>
<p align="center"><img width="624" alt="Captura de pantalla 2025-05-30 a las 20 18 44" src="https://github.com/user-attachments/assets/a0704b85-862a-40ef-b436-9715f5b5d927" /></p>

#### Example 5: Partial Fraction Expansion
Determine the partial fraction expansion of the following proper rational fraction, where the highest degree of the denominator is greater than the highest degree of the numerator.

$$\frac{2s+3}{s^2+2s}$$

```matlab
% Partial fraction
% Fraction: (2s+3)/(s^2+2s)
% Highest degree of Numerator < Highest degree of denominator

syms s
N = [2 3];
D = [1 2 0];
disp('The residuals:')
[r,p,k] = residue(N,D)
Espan = @(s) r(1)/(s-p(1)) + r(2)/(s-p(2));
disp('The partial fraction expansion:')
disp(Espan(s))
```

#### Example 6: Partial Fraction Expansion
Determine the partial fraction expansion of the following improper rational fraction, where the highest degree of the denomintaor is equal to the highest degree of numerator.

$$\frac{2s^2+4s+1}{s^2+2s}$$

```matlab
% Partial fraction-2
% Fraction: (2s^2+4s+1)/(s^2+2s)
% Highest degree of Numerator = Highest degree of denominator

syms s
N = [2 4 1]
D = [1 2 0]
disp('The residuals')
[r,p,k]  = residue(N,D)
Espan = @(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + k;
disp('The partial fracttion expansion:')
disp(Espan(s))
```

#### Example 7: Partial Fraction Expansion
Determine the partial fraction expansion of the following proper rational fraction, where the highest degree of the denominator is equal to the highest degree of numerator.

$$\frac{2s^2+2s+1}{2s^2+4s+3}$$

```matlab
% Partial fraction-3
% Fraction: (2s^2+2s+1)/(2s^2+4s+3)
% Highest degree of Numerator = Highest degree of denominator

syms s
N = [2 2 1]
D = [2 4 3]
disp('The residuals')
[r,p,k]  = residue(N,D)
Espan = @(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + k;
disp('The partial fracttion expansion:')
disp(Espan(s))
```

#### Example 8: Partial Fraction Expansion
Determine the partial fraction expansion of the following improper rational fraction, where the highest degree of denominator is less than the highest degree of numerator.

$$\frac{2s^3+4s^2+3s+2}{s^2+2s+1}$$

```matlab
% Partial fraction-4
% Fraction: (2s^3+4s^2+3s+2)/(s^2+2s+1)
% Highest degree of Numerator = Highest degree of denominator

syms s
N = [2 4 3 2]
D = [1 2 1]
disp('The residuals')
[r,p,k]  = residue(N,D)
Espan = @(s) r(1)/(s-p(1)) + r(2)/(s-p(2)) + (s*k(1)+k(2));
disp('The partial fracttion expansion:')
disp(Espan(s))
```

### 8.2.6. DC Gain
In general, the value of a transfer function signifies gain, which is termed as AC gain due to the existence of the frequency term. When that frequency components becomes zero, the AC gain can be referred to as DC gain. 

To be more precise, DC gain can be defined as the ratio of the steady-state step output or response to the state input. It can also be regarded as the value of the transfer function solved at $$s = 0$$, using the following formula:

$$DC gain = G(s)$$

Here, $$G(s)$$ represents the transfer function of a system.

#### Example 9: DC Gain
Determine the DC gain of the following transfer function.

$$G(s) = \frac{20}{s^2+10s+11}$$

```matlab
% DC Gain
% Transfer eqn: 20/(s^2+10+11)

syms s
G = @(s) 20/(s^2+10*s+11);
DC_gain = limit(G(s),s,0);
fprintf('DC gain: %f\n',DC_gain)
```

### 8.2.7. Initial Value and Final Value Theorem
The initial value theorem is used to determine the value of a time domain function, $$g(t)$$, at $$t = 0$$ given the Laplace transform of that function. On the other hand, the final value theorem helps to determine the final value of the function at $$t = \infty$$. Both of these theorems are regarded together as the limiting theorem.

**Initial value theorem:** $$g(t) = \lim_{s \to \infty} sG(s)$$

**Final value theorem:** $$g(t) = \lim_{s \to 0} sG(s)$$

Here, $$G(s)$$ is the Laplace transform of the time domain function $$g(t)$$.

#### Example 10: Initial and Final Value Theorem
Considering the following transfer function:

$$G(s) = \frac{2+6s+2s^2}{2s(s+2)^2}$$

Determine the initial and final value of $$g(t)$$.

```matlab
% Initial value problem
% Transfer eqn: (2+6*s+2*s^2)/(2*s*(s+2)^2)
clc; clear;

syms s
G = @(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Initial_val = limit(s*G(s),s,Inf);
fprintf('Initial value: %.3f\n',Initial_val)
```

```matlab
%Final value problem
% Transfer eqn: (2+6*s+2*s^2)/(2*s*(s+2)^2)
clc; clear;

syms s
G = @(s) (2 + 6*s + 2*s^2)/(2*s*(s+2)^2);
Final_val = limit(s*G(s),s,0);
fprintf('Final value: %.3f\n',Final_val)
```

### 8.2.8. Poles/Zeros
The poles are the roots of the denominators of the transfer function of a system. On the other hand, zeros are the roots of the numerator of the transfer function of a system. In MATLAB, the commands for determining poles and zeros of a system from its transfer function are listed below:

```matlab
%Command for determining poles from transfer function G
pole(G)

%Command for determining zeros from transfer function G
zero(G)

% Command for pole-zero mapping from transfer function G
pzmap(G)
```

#### Example 11: Poles and Zeros
Consider the following transfer function to determine the poles and zeros:

$$G(s) = \frac{s+50}{s^2+11s+12}$$

```matlab
%Poles/zeros
% Transfer function: (s+50)/(s^2+11s+12)

G = tf([1 50],[1,11,12]);
disp('Transfer function:')
G
poles = pole(G)
zeros = zero(G)

%Pole-zero map
pzmap(G)
grid on
```

### 8.2.9. Laplace Transform in Electrical Circuit
The Laplace transform can be used for electrical circuit analysis. We can convert the ratio of output to input into Laplace transformation to determine its transfer function. Later, from the transfer function, we can perform frequency domain analysis. 

Consider the RLC circuit from Figure 4 to determine the following aspects using MATLAB:

(a) Transfer function

(b) Poles and zeros

(c) DC gain

(d) Initial and final value


<p align="center"><img width="690" alt="Captura de pantalla 2025-06-15 a las 12 54 51" src="https://github.com/user-attachments/assets/96057255-edfa-4421-a4a5-18be963591d7" /></em></p>
<p align="center"> <em>Figure 4: RLC circuit </em></p>

(a) When converting from the time domain to the frequency domain, a capacitive element is represented as $$\frac{1}{sC}$$ and an inductive element is represented as $$sL$$, while the resistive element stays the same. The transfer function of the circuit:

$$G(s) = \frac{V_{out}}{V_{in}} = \frac{sL}{R+sL+\frac{1}{sC}} = \frac{s}{2+s+\frac{1}{0.5s}} = \frac{s^2}{s^2+2s+2}$$

(b) Poles and zeros:

Poles = The roots of the denominator $$s^2+2s+2$$

$$\text{Poles} = \frac{-2 \pm \sqrt{2^2 - 4 \cdot 1 \cdot 2}}{2 \cdot 1} = -1 \pm i$$

Zeros = The roots of the numerator $$s^2$$

$$\text{Zeros} = 0, 0$$

(c) DC Gain

$$\text{DC Gain} = G(s) = (\frac{s^2}{s^2+2s+2}) = 0$$

(d) Initial and final value

$$\text{Initial value theorem:} g(t) = sG(s) = (s*\frac{s^2}{s^2+2s+2}) = &infin;$$

$$\text{Final value theorem:} g(t) = sG(s) = (s*\frac{s^2}{s^2+2s+2}) = 0$$


```matlab
% Transfer function: s^2/(s^2+2*s+2)

disp('Transfer function:')
G = tf([1 0 0],[1 2 2])

% Poles and zeros
poles = pole(G)
zeros = zero(G)

% Pole-zero map
pzmap(G)
grid on

% DC gain
syms s
G = @(s) s^2/(s^2+2*s+2);
DC_gain = limit(G(s),s,0);
fprintf('DC gain: %f\n',DC_gain)

% Initial value
Initial_val = limit(s*G(s),s,Inf);
fprintf('Initial value: %.3f\n',Initial_val);

% Final value
Final_val = limit(s*G(s),s,0);
fprintf('Final value: %.3f\n',Final_val);
```

## 8.3. Time Response Overview
Time response signifies the output of a time domain function that characterises any dynamic system. To determine the time response of a system, the nature of the input and the mathematical model of the system need to be known.

The time response of a system can be categorised into two components: transient response and steady-state response. The transient response is the initial part of the time response, which exists only for a short period and approaches zero as time continues. Conversely, a steady-state response is the stable response of the system that happens right after the transient response. 

Table 5 lists some of the input signal functions with their time and frequency domain characteristics. 

<p align="center"><em>Table 5: Some input signals and their functions in time and frequency domain </em></p>
<p align="center"><em><img width="1040" alt="Captura de pantalla 2025-06-24 a las 12 59 55" src="https://github.com/user-attachments/assets/bef94184-896b-4b4f-bd16-bf96f17b6746" /></em></p>

### 8.3.1. First-Order System
The general representation of the transfer function of a first-order system can be generalised using the following formula:

$$G(s) = \frac{K}{1+ \tau s}$$

Here, $$G(s)$$ represents the transfer function of the first-order system, $$K$$ is the DC gain, and $$\tau$$ is the time constant.

Consider the following transfer function of a first-order system:

$$G(s) = \frac{8}{2+ 5s}$$

Determine the following parameters:

(a) DC gain

(b) Time constant

$$G(s) = \frac{K}{1+ \tau s} = \frac{8}{2+ 5s} = \frac{4}{1+ \frac{5}{2}s}$$

Hence, DC gain is $$K = 4$$ and time constant $$\tau = \frac{5}{2}$$

#### 8.3.1.1. Specific Characteristics of First-Order Systems
**Rise Time** is the time required by a signal to reach 90% of its final value starting from 10%. Consider the following step response of a first-order system:

$$y(t) = K(1-e^{\frac{-t}{\tau}})$$

where $$K$$ is the DC gain $$\tau$$ is the time constant.

The following formula can determine the time required to reach 10% of the final value:

$$t_{10\\%} = -\tau \cdot \ln(0.1)$$

The following formula can determine the time required to reach 90% of the final value:

$$t_{90\\%} = -\tau \cdot \ln(0.9)$$

Therefore, the rise time of a first-order system can be calculated as:

$$T_{R} = t_{90\\%} - t_{10\\%} = \tau \cdot \ln(9) = 2.2 \tau$$

**Settling Time** is the time required for a signal to reach and remain steady within 2%-5% of its final values. The formula for determining settling time for 2% criteria can be written as:

Maximum settling time, $$T_{S_max} = -\tau lnln(0.02) &asymp; 4 \tau$$

The formula for determining settling time for 5% criteria can be written as:

Minimum settling time, $$T_{S_min} = -\tau lnln(0.05) &asymp; 3 \tau$$

**Delay Time** can be defined as the required time for a response to reach 50% of its final value during the first half cycle of the waveform. The formula for determining delay time can be represented as follows:

Delay time, $$T_{D} = -\tau lnln(0.5) &asymp; 0.7 \tau$$

### 8.3.2. Second-Order System
The general format of the transfer function of a second-order system can be represented using the following equation:

$$G(s) = \frac{K \omega_n^2}{s^2 + 2\zeta \omega_ns + \omega_n^2}$$

Here, $$K$$ is the DC gain; $$\omega_n$$ is the natural frequency; and $$\zeta$$ represents the damping ratio of the second-order system. The roots of the transfer function's denominator indicate the poles of the system, based on which the stability of a system can be determined. Hence, the poles of a second-order system can be determined using the following formula:

$$\text{Poles} = \frac{-2 \zeta \omega_n \pm \sqrt{4 \zeta^2 \omega_n^2 - 4 \cdot 1 \cdot \omega_n^2}}{2 \cdot 1} = -\zeta \omega_n \pm \omega_n \sqrt{\zeta^2-1}$$

The damping ratio of a second-order system, $$\zeta$$, is used to classify different systems based on the oscillation characteristics of a system.

 #### 8.3.2.1. Specific Characteristics of Second-Order Systems
 **Delay Time** has the same definition as the one for the first-order system, but has a different formula.

 $$\text{Delay time,}T_{D} = \frac{0.7\zeta + 1}{\omega_n\sqrt{1-\zeta^2}}$$

 **Rise Time** of a response of a second-order system can be defined as the required time of the response to reach its 10% final value to 90% final value during the first cycle of the response. The definition works when the damping ratio is greater than 1. 

 $$\text{Rise time,}T_{R} = \frac{\pi-\frac{\sqrt{1-\zeta^2}}{\zeta}}{\omega_n\sqrt{1-\zeta^2}}$$

 **Peak Time** is the time required for the response of a second-order system to reach its peak or maximum value during the first cycle.

 $$\text{Peak Time,}T_{P} = \frac{\pi}{\omega_n\sqrt{1-\zeta^2}}$$

 **Settling Time** is the same definition as before mentioned in the first-order system. 

 $$\text{Maximum settling time,}T_{S_{max}} = \frac{4}{\omega_n\sqrt{1-\zeta^2}}$$

 $$\text{Minimum settling time,}T_{S_{min}} = \frac{3}{\omega_n\sqrt{1-\zeta^2}}$$

 **Percent of Overshoot** os a second-order system can be determined mathematically by

 $$\text{%Overshoot} = 100e^{\frac{\zeta_n}{\sqrt{1-\zeta^2}}}$$

### 8.3.3. Impact of Damping Ratio

 
