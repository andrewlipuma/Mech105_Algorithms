# Simpson's 1/3 Rule Numerical Integration Algorithm

This algorithm integrates experimental data using Simpson's 1/3 rule. The function will ensure that the matrices of input data are the same size, the number of intervals, and if the values are equally spaced. If there is an even number of intervals, the algorithm will use the trapezoidal rule on the last interval to accurately evaluate the integral.
* Inputs
  * x : The values of the independent variable for a data set.
  * y : The values of the dependent variable with respect to x.
 * Outputs
   *  I : The numerical integral calculated for the input data set.
