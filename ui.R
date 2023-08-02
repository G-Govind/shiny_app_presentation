# ui.R

library(shiny)

fluidPage(
  titlePanel("Simple Calculator"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("operation", "Select an Operation:",
                   choices = c("Addition", "Subtraction", "Multiplication", "Division")),
      numericInput("value1", "Enter Value 1:", value = 0),
      numericInput("value2", "Enter Value 2:", value = 0)
    ),
    mainPanel(
      h3("Result:"),
      verbatimTextOutput("result")
    )
  )
)
