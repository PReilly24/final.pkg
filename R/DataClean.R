#' Remove the NA values from a data set
#'
#' Uses a single data set input, then uses the "na.omit" function to remove NA values. 
#' Returns the data set with removed NA values.
#'
#' @param data_set A data set inputted by the user. Presumably a data set that contains NA values.
#' @return cleaned_Data This is the data set with removed NA values.
#'
#' @export

#This function will clean the data by removing NA values.


DataClean <- function(data_set){
  cleaned_Data = data_set %>% 
    na.omit()
  return(cleaned_Data)
}