# server.R

server <- function(input, output) {
  output$result <- renderPrint({
    operation <- input$operation
    value1 <- input$value1
    value2 <- input$value2
    
    if (operation == "Addition") {
      result <- value1 + value2
    } else if (operation == "Subtraction") {
      result <- value1 - value2
    } else if (operation == "Multiplication") {
      result <- value1 * value2
    } else if (operation == "Division") {
      if (value2 != 0) {
        result <- value1 / value2
      } else {
        result <- "Error: Cannot divide by zero"
      }
    }
    
    return(result)
  })
}
