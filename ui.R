shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculation"),
    sidebarPanel(
      numericInput('id1', 'Height m', 0, min = 0, max = 2, step = 0.1),
      numericInput('id2', 'Weight kg', 0, min = 0.0, max = 200, step = 0.1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('BMI Result'),
      h4('You entered'),
      verbatimTextOutput("oid1"),
      h4('You entered'),
      verbatimTextOutput("oid2"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("calculation")
    )
  )
)
