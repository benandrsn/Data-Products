library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Affect of Weight Carried on Miles Per Gallon"),
  sidebarPanel(
    numericInput("wt", "Weight added to car (in LBS)", 200, step=100),
    numericInput("initialMPG", "Car's EPA estimated MPG", 25.0, step=.5),
    submitButton("Submit")),
  mainPanel(
    h3("Results of the prediction"),
    h4("You entered a weight of"),
    verbatimTextOutput("inputValue1"),
    h4("You entered an initial MPG of"),
    verbatimTextOutput("inputValue2"),
    h4("The new estimated MPG is"),
    verbatimTextOutput("prediction")
  )
))