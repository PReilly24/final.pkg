#' Runs a linear model for a predictor and a response from the crabs data set.
#'
#' Uses the input of a data set as well as a predictor and response columns to run a linear model.
#' Returns the linear model summary made from the predictor and response variables. Returns a statement if a linear model cannot be made.
#'
#' @param data_set A data set input by the user. In this case, it would be the crabs data set.
#' @param response A numeric column input by the user. This will be the variable that will respond to the predictor.
#' @param predictor_col A numeric column input by the user. This will be the variable that predicts the response.
#' @return return_summary The linear model summary made from the predictor and response variables. Will return a statement if a linear model cannot be made.
#'
#' @export

lm_function <- function(data_set, response, predictor_cols){
    if (is.numeric(data_set[[response]]) && all(sapply(data_set[predictor_cols], is.numeric))){
      return_summary <- data_set %>% 
        select(a = quo_name(response), starts_with(predictor_cols)) %>% 
        lm(a ~ ., data = .) %>% 
        summary()
      return(return_summary)
    } else {
      print("Cannot create a linear model with non-numeric variables.")
    }
  }