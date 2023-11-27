#' Create a scatter plot using two variables in the crabs data set.
#'
#' Uses a data set and two columns inputted by the used to create a scatter plot.
#' Returns the completed scatter plot, or a message if the plot cannot be created
#'
#' @param variable1 A column from the crabs data set inputted by the user. Will appear on the x axis of the graph.
#' @param variable2 A column from the crabs data set inputted by the user. Will appear on the y axis of the graph.
#' @param data The chosen data set. In this case, the crabs data set
#' @return plot The completed scatter plot made using the two chosen variables from the crabs data set. If a scatter plot cannot be made, a message will be displayed
#' 
#' @export

ScatterPlot <- function(variable1, variable2, data) {
  if (is.numeric(data[[variable1]]) && is.numeric(data[[variable2]])) {
    plot <- ggplot(data, aes_string(x = variable1, y = variable2)) +
      geom_point(alpha = 0.1)
    return(plot)
  } else {
    message("One or both of the variables are not numeric. Scatter plot cannot be created.")
    return(NULL)
  }
}