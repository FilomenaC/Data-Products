library(shiny)

bmiIndex<- function(inHe, inWe) inWe/(inHe/100)^2

shinyServer(
function(input, output) {
        output$paramText<-renderText({
                paste("Youh height is", 
                strong(round(input$inHe,1)),
                "cm, your weight is", 
                strong(round(input$inWe,1)),
                "kg. Your body Mass Index is:")})
        output$prediction<-renderPrint({round(bmiIndex(input$inHe,input$inWe),1)})
})        
        


        
        
        
       