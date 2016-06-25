library(shiny)

shinyUI(fluidPage(
        titlePanel("Calculation of the Body Mass Index (BMI)"),
        sidebarLayout(
                sidebarPanel(
                        helpText("This application calculates the BMI index through the individual height and weight."),
                        helpText("Please enter the parameters:"),
                        sliderInput(inputId = "inHe",
                                    label = "Your height in centimeters:",
                                    value = 130,
                                    min = 130,
                                    max = 200,
                                    step = 1),
                        sliderInput(inputId = "inWe",
                                    label = "Your weight in kilograms:",
                                    value = 40,
                                    min = 40,
                                    max = 150,
                                    step = 1)
                ),
                
                mainPanel(
                        htmlOutput("paramText"),
                        verbatimTextOutput("prediction"),
                        img(src="bmi-table.png", height = 400, width = 400)
                )
        )
))


