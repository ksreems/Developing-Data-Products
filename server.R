BMI <- function(height, weight) weight/height^2
shinyServer(
  function(input, output) {
      output$oid1 <- renderText({input$id1})
      output$oid2 <- renderText({input$id2})
      output$calculation <- renderPrint({BMI(input$id1, input$id2)})
      }
)
