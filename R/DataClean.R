#' Remove the NA values from a data set
#'
#' Uses a single data set input, then uses the "na.omit" function to remove NA values. 
#' Returns the data set with removed NA values. Returns a statement if there are no NA values.
#'
#' @param data_set A data set inputted by the user. Presumably a data set that contains NA values.
#' @return clean This is the data set with removed NA values. Returns a statement if there are no NA values.
#'
#' @export

#This function will clean the data by removing NA values.


DataClean <- function(data_set) {
  if (sum(is.na(data_set)) != 0) {
    clean <- data_set %>% 
      na.omit(data_set)
    return(clean)
  } else {
    print("No NAs in data set.")
  }
}