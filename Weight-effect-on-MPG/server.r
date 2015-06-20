library(shiny)
library(datasets)

mpgChange <- function(initialMPG,wt) {
  (initialMPG+(wt/2000*-5.344))
}

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$wt})
    output$inputValue2 <- renderPrint({input$initialMPG})
    output$prediction <- renderPrint({mpgChange(input$initialMPG,input$wt)})
  }
)