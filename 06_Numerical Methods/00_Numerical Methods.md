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







