library(shiny)
library(datasets)

mpgData <- mtcars
mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    ppk <- reactive({
        paste("mpg ~", input$variable)
    })
    
    psg <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    fit <- reactive({
        lm(as.formula(psg()), data=mpgData)
    })
    
    output$caption <- renderText({
        ppk()
    })
    
    output$mpgBoxPlot <- renderPlot({
        boxplot(as.formula(ppk()), 
                data = mpgData,
                outline = input$outliers)
    })
    
    output$fit <- renderPrint({
        summary(fit())
    })
    
    output$mpgPlot <- renderPlot({
        with(mpgData, {
            plot(as.formula(psg()))
            abline(fit(), col=2)
        })
    })
    
})