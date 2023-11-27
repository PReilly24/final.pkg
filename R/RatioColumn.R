#' Create a new column in a data set using the ratio of two existing columns.
#'
#' Uses an inputted data set and two columns from that data set to create a column of their ratios
#' Returns the newly created column. If either of the columns contain non-numeric data, a message is returned.
#'
#' @param data A data set input by the user. In this case, it would be the crabs data set.
#' @param variable1 A numeric column from the crabs data set. This will be the divided by variable2 to create the new column.
#' @param variable2 A numeric column from the crabs data set. The first variable will be divided by this column to create the new column.
#' @return new_col The new column created with the ration of variable1 and variable2
#'
#' @export

RatioCol <- function(data, variable1, variable2){
  if (is.numeric(data[[variable1]]) && is.numeric(data[[variable2]])){
    mutation <- data %>% 
      mutate(new_col = data[variable1] / data[variable2]) %>% 
      select(new_col)
    return(mutation)
  } else {
    print("One or more variables are non-numeric. Cannot create new column.")
  }
}

