# Linear Regression Algorithm

linearRegression computes the linear regression line equation and R^2 value for an input data set. If the data is not input in ascending order the algorithm will order the data. The algorithm will then also find and filter out any outliers within the data set that are outside the interquartile range. 
* Inputs
  * x - x-values of the data set
  * y - y-values of the data set.
 * Outputs
   *  fX - the matrix of x-values excluding the outliers sorted from smallest to largest with correspondance to y
   *  fY - the matrix of y-values excluding the outliers sorted from smallest to largest
   *  slope - the slope from the calculated linear regression line
   *  intercept - the intercept from the calculated linear regression line
   *  Rsquared - the coefficient of determination 
