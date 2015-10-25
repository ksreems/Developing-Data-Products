library(shiny)
library(ggplot2)

mydata <- iris

shinyUI(pageWithSidebar(
  
  headerPanel("Plot of Species of Iris Flowers"),
  
  sidebarPanel(
    
    selectInput('x', 'Select the data for the x-axis', names(mydata)),
    selectInput('y', 'Select the data for the y-axis', names(mydata), 
                names(mydata)[[2]]),
    selectInput('color', 'To color data by Species or Not', 
                c('None', names(mydata)[[5]]))    
    ),
  
  mainPanel(
    p("The iris data set gives the measurements in centimeters of the variables 
      sepal length and width and petal length and width, respectively, for 50 flowers 
      from each of 3 species of iris. The species are Iris setosa, versicolor, and 
      virginica."),
    p("The plot below shows a scatterplot of the measurements of the flowers, which
      can be color-coded by species."),
    plotOutput('plot')
  )
))
