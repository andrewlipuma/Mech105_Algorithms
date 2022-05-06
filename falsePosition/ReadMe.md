# False Position Root Finding Algorithm

This algorithm falsePosition accepts a minimum of a function along with an upper and lower guess to estimate the root of the function. This algorithm allows you to set a desired error and number of iterations. If an error is not specified the algorithm defaults to 0.0001. If the iterations is not specified, the algorithm will automatically iterate 200 times.
* Inputs
  * func - the function of which you are trying to find
  * xl - the lower guess that brackets the root of the function 
  * xu - the upper guess that brackets the root of the function
  * es - the desired relative error
  * maxit - the desired number of maximum iterations
 * Outputs
   *  root - the root of the function estimated by the algorithm
   *  fx - the function evaluated at the location of the root
   *  ea - the approximate relative error
   *  iter - how many iterations the algorithm executed
