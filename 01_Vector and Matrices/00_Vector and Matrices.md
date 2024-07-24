# Vector and Matrices

### Creating Vectors

A vector can be created using the values enclosed within square brackets, [ ]. A space is used to differentiate among different values. A vector can be a row vector or column vector. In a row vector, the values are separated using space, and semicolons are used among the values in the case of a column vector.

For example, A is a row vector, which contains four values that are separated using space between two neighbouring values. The size of vector A is 1 x 4. B is a column vector, where the values are arranged over a single column. The size of vector B is 4 x 1.

```matlab
% Row vector
A = [1 5 7 9]

% Column vector
B = [1; 5; 7; 9]
```
A vector having values of equal increment or decrement can be defined in an easier way for avoiding enlisting a large number of values manually.

The vector C has three entities—the first one is the starting value and the last one is the ending value of the vector. The values are equally spaced and have a +2 increment. The increment value represents the middle entity of the C vector. In case, the increment is +1, the middle entity can be skipped as MATLAB considers +1 as the default increment. For decrement or negative increment, the middle entity will become a negative value.

```matlab
% Row vector with increments
C = 1:2:12

% Row vector with decrements
D = 12:-2:1
```


