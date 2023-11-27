#' Find the sum of a column if the value is greater than 6500.
#'
#' Uses the input of a data set and a specific column to find its sum only if it is larger than 6500. 
#' Returns the answer a numeric value if the sum is greater than 6500. If the sum is smaller than 6500, a message is returned.
#'
#' @param data A data set input by the user. In this case, it would be the crabs data set.
#' @param column A column contained in the inputted data set. For a numeric output, the column must contain numeric values.
#' @return total The sum of all values in the inputted column. If this return is not possible, a message will be displayed.
#'
#' @export

FunFunction <- function(data, column){
  total <- sum(data[[column]])
  if(total > 6500){
    return(total)
  } else {
    print("Either the column contains non-numeric data, or its sum is less than 6500.")
  }
}