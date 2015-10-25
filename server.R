library(shiny)
library(ggplot2)

function(input, output) {
  
  mydata <- reactive(iris)
  
  output$plot <- renderPlot({
    
    g <- ggplot(mydata(), aes_string(x=input$x, y=input$y)) + geom_point()
    
    if (input$color != 'None')
      g <- g + aes_string(color=input$color)
    
    print(g)
    
  }, height=700)
  
}
