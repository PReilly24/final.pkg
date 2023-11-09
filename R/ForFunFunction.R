#' Find out if an input is a number or not
#'
#' Uses a single input and determines whether or not the input is a numeric value or not.
#' Returns the answer as a statement.
#'
#' @param number Any input by the user. Does not have to be a numeric value.
#' @return Either "THIS IS INDEED A NUMBER" or "THIS IS NOT A NUMBER. TRY AGAIN." Only two returns.
#'
#' @export

FunFunction <- function(number){
     if(is.numeric(number) == TRUE){
         print("THIS IS INDEED A NUMBER")
     }
     if(is.numeric(number) == FALSE){
         print("THIS IS NOT A NUMBER. TRY AGAIN.")
     }
}

