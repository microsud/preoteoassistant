

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$result1 <- renderText({
    
    if (!is.na(input$inputCon)){
      print("Please type a value")
    }
    sampleloading <- (input$expcon/input$inputCon)*1000
    one <- paste0("Sample loading on the gel (µl): ", round(sampleloading, 3))

    
    })
  
  output$result2 <- renderText({
    
    if (!is.na(input$inputCon)){
      print("Please type a value")
    }
    sampleloading <- (input$expcon/input$inputCon)*1000
    ldbuf<- sampleloading/input$lodingbuf
    two <- paste0(" Loading buffer (µl): ", round(ldbuf, 3))
    
    
  })
  
  output$result3 <- renderText({
    
    sampleloading <- (input$expcon/input$inputCon)*1000
    ldbuf<- sampleloading/input$lodingbuf
    Total <- ldbuf + sampleloading
    three <- paste0("Total volumne (µl): ", round(Total, 3))
    
    
  })
  
})
