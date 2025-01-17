## 6.1.Introduction
Numerical methods are important to solve mathematical problems that contain continuous variables and are not possible to solve explicitly. This chapter describes numerical methods such as the Gauss-Seidel, Newton-Raphson, and Runge-Kutta methods. 

## 6.2.Gauss-Seidel Method
Gauss-Sidel method is an iterative method through which a set of equations can be solved to determine unknown variables. Consider the following set of equations, where $$x, y,$$ and $$z$$ are the unknown variables: 

$$a_{1}x + b_{1}y + c_{1}z = d_{1}$$

$$a_{2}x + b_{2}y + c_{2}z = d_{2}$$

$$a_{3}x + b_{3}y + c_{3}z = d_{3}$$

Here, $$a_{1}$$, $$a_{2}$$, $$a_{3}$$ are the coeficients of $$x$$; $$b_{1}$$, $$b_{2}$$, $$b_{3}$$ are the coefficients of $$y$$; $$c_{1}$$, $$c_{2}$$, $$c_{3}$$ represent the coefficients of $$z$$, and $$d_{1}$$, $$d_{2}$$, $$d_{3}$$ are the constants of the above equations. 

In the Gauss-Seidel method, the aim is to solve these equations for $$x, y,$$ and $$z$$, respectively. Hence, these equations can be rewritten as follows:

$$x = \frac{1}{a_{1}} (d_{1} - b_{1}y - c_{1}z)$$

$$y = \frac{1}{b_{2}} (d_{1} - a_{2}x - c_{2}z)$$

$$z = \frac{1}{c_{3}} (d_{1} - a_{3}x - b_{3}y)$$

The next step is to assign the initial values of $$x, y$$ and $$z$$ into the above equations to determine the values of $$x^1, y^1, z^1$$, which indicates the first approximation of the values of $$x, y$$ and $$z$$, respectively after the first iteration. In the previous Gauss iteration method, all the initial values are used during the first iteration; and later the results of the first iterations are used for the successive iteration. To understand it more clearly, let us assume the initial values of $$x, y$$ and $$z$$ are $$x_{0}, y_{0}$$ and $$z_{0}$$, respectively. 

In the Gaus iteration method, the first approximations of the values are determined as follows:

$$x^1 = \frac{1}{a_{1}} (d_{1} - b_{1}y_{0} - c_{1}z_{0})$$

$$y^1 = \frac{1}{b_{2}} (d_{1} - a_{2}x_{0} - c_{2}z_{0})$$

$$z^1 = \frac{1}{c_{3}} (d_{1} - a_{3}x_{0} - b_{3}y_{0})$$

To determined the values of $$x^2, y^2, z^2$$ in the second iteration, the determined values $$x^1, y^1, z^1$$ will be used in place of $$x_{0}, y_{0}, z_{0}$$ respectively. The algorithm continues until convergence. 

In the Gauss-Seidel method, the first approximations are calculated as follows:

$$x^1 = \frac{1}{a_{1}} (d_{1} - b_{1}y_{0} - c_{1}z_{0})$$

$$y^1 = \frac{1}{b_{2}} (d_{1} - a_{2}x^1 - c_{2}z_{0})$$

$$z^1 = \frac{1}{c_{3}} (d_{1} - a_{3}x^1 - b_{3}y^1)$$

Here, in the first iteration, for determining $$y^1$$, the latest updated value $$x^1$$ is used instead of $$x_{0}$$. The same continues for other values and other iterations as well. Due to this improvisation, the number of iterations is greatly reduced, and the algorithm converges more quickly.

After repeating these steps for several iterations, we can more accurately determine the values of $$x,y$$, and $$z$$. In this iterative method, when the approximate values become almost constant after some iterations, we can conclude that the convergence has happened and stop the iterations.
There are also some other methods such as calculating the tolerance and making a decision based on our expectation of tolerance for a certain problem to set up stopping criteria. The tolerance is calculated by using the following formula:

$$Tol_(x^{i+1}) = \frac{|x^{i+1}-x^i|}{x^i}$$

Here, $$Tol_(x^{i+1})$$ indicates the folerance for $$x^{i+1}$$ in the $$(i+1)^{th}$$ iteration. Similarly, the tolerance for $$y^i$$ and $$z^i$$ can be calculated. A threshold tolerance can be defined based on which the stopping decision will be made. For example, if the tolerance values for all $$x, y$$ and $$z$$ fall below 0.0001, we can decide that the convergence has been achieved at that iteration. 

#### Example 1
Consider the following set of equations to determine the values of $$x, y$$ and $$z$$ using the Gauss-Seidel method

$$80x - 10y + 2z = 85$$

$$5x +50y + 12z = 112$$

$$4x + 9y + 30z = 68$$

```matlab
clc; clear all

% Gauss-Seidel method
% Set of equations
% F1(x,y,z) = 80x+10y-2z==85
% F2(x,y,z) = 5x+50y+12z==112
% F3(x,y,z) = 4x+9y+30z==68
% Stopping criteria: Tolerance of (x,y,z) < 0.00001

fx = @(x,y,z) (1/80).*(85-10*y+2*z);
fy = @(x,y,z) (1/50).*(112-5*x-12*z);
fz = @(x,y,z) (1/30).*(68-4*x-9*y);
xo=0; yo=0; zo=0;
N = 100;
for j=1:N
    x = fx(xo,yo,zo);
    y = fy(xo,yo,zo);
    z = fz(xo,yo,zo);
    tol_x = abs(x-xo)/xo;
    tol_y = abs(y-yo)/yo;
    tol_z = abs(z-zo)/zo;
    fprintf('x%.5f Tol_x: %.5f y: %.5f Tol_y: %.5f z: %.5f Tol_z: %.5f \n',...
        x,tol_x,y,tol_y,z,tol_z);

    xo=x; yo=y; zo=z;
    % Stopping criteria
    if (tol_x<0.00001 && tol_y<0.00001 && tol_z<0.00001)
        break;
    end
end
fprintf('The solution after %dth iteration:\n',j);
fprintf('x: %f y: %f z: %.5f \n',x,y,z);
```

## 6.3. Newton-Raphson Method
Newton-Raphson (N-R) method is one of the most effective methods to approximate the root of a nonlinear function, which is differentiable. It uses the concept of the tangent to produce an approximation of the root, and it only needs one initial value, which needs to be close to the value of the actual root of that function. The closer the initial value, the accuracy of the approximation will be enhanced accordingly. Consider a function $$f(x)$$ we are interested in approximating its root. If the initial guess of $$x$$ is $$x_{0}$$, the procedure to approximate the root is the following:

The first step is to determine the first approximate value of the root by using the following formula:

$$x^1 = x_{0}-\frac{f(x_{0})}{f'(x_{0})}$$

where $$x^1$$ indicates the first approximated root determined after the first iteration and $$f'(x)$$ is the first derivative of the input function $$f(x)$$. In the above equation, the ratio of the original function and its derivative at the point $$x = x_{0}$$ is used. In the next step, $$x^1$$ replaces $$x_{0}$$, and the second iteration is performed to determine the second approximate root. This step is repeated until convergence is attained. The general formula for the approximation root is:

$$x^{n+1} = x^n - \frac{f(x)}{f'(x)}$$

Here, $$n$$ represents the number of iterations. Sometimes the initial value can be a small range instead of a single value. In that case, the good strategy is to take the mean value of that range as our initial guess and start from there. For the stopping criteria of iteration, we can follow the same procedure mentioned previously in the Gauss-Seidel method.

#### Example 2
Consider the function, $$f(x) = 2x + sin(x) - 2$$, which has a root within the range of [0,2]. Using the N-R method, approximate the root of the function. Make sure that the tolerance for the value of the root is less than 0.0001.

```matlab
clc; clear all

% Newton raphson method
% Find the root of 2*x+sin(x)-2
% Stopping criteria: Tolerance < 0.00001

F = @(x) 2*x+sin(x)-2;
syms x
% Derivative
dF(x) = diff(F(x));
a=0;
b=2;
xo = mean([a b]);
N = 100;
for i=1:N
    x=xo-(F(xo)/dF(xo));
    tol=abs(x-xo)/xo;
    fprintf('x: %.5f Tolerance: %.5f \n',x,tol);
    xo=x;
    % Stopping criteria
    if (tol<0.00001)
        break
    end
end

fprintf('Root of the equation after %dth iteration: %.5f\n',i,x);
```

## 6.4. Runge-Kutta Method


