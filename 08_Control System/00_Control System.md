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



