shinyUI(fluidPage(
  titlePanel("Proteomics Assistant"),
  
  sidebarLayout(sidebarPanel(
    
    helpText("Fill in the values and get how much you need to add in the gel."),
    
    numericInput(
      inputId = "inputCon",
      label = strong("Conc. (ng/µl):"),
      value = NA,
      min = 0,
      max = 10000000000
    ),
    
    numericInput(
      inputId = "expcon",
      label = strong("Total protein to be added (ug):"),
      value = 50,
      min  = 15,
      max = 100
    ),
    numericInput(
      inputId = "lodingbuf",
      label = strong("Total volume loading buffer (ul):"),
      value = NA,
      min  = 3,
      max = 50
    )
    ),
    
    mainPanel(
      h3(textOutput("result1")),
      h3(textOutput("result2")),
      h3(textOutput("result3"))
    ))
))