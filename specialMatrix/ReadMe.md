# Creating a special n x m matrix Algorithm

specialMatrix accepts two scalar inputs to create a matrix. The matrix created will contain the following conditions: 
* The value of each element in the first row is the number of the column.
* The value of each element in the first column is the number of the row.
* The rest of the elements each has a value equal to the sum of the element above it and element to the left.

If the user attempts to input more than one argument, the algorithm will return an error. 
* Inputs
  * n - the number of desired rows
  * m - the number of desired columns
 * Outputs
   *  A - the output matrix that is created following the conditions listed above
