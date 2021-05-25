#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, main = "AM", xlab = "Farm", ylab = "Freq", breaks = bins, col = 'green', border = 'black') 
    axis(1, col = 'blue', col.axis = 'purple', col.ticks = 'red', cex.axis = 1.5, font = 2, family = 'serif')
    axis(2, col = 'maroon', col.axis = 'pink', col.ticks = 'limegreen', cex.axis = 0.9, font =3, family = 'mono')
    
  })
  
})


#####
#export data as xlsx
#mthode 1
#> install.packages("writexl")
#> library("writexl")
#> write_xlsx(faithful,"C:\\Users\\Albaaj\\Desktop\\R Shiny MasterClass\\faithful.xlsx")
#methode 2
#> install.packages("xlsx")
#> library("xlsx")
#> write.xlsx(faithful, file = "faithful.xlsx",
#+            sheetName = "Faithful", append = FALSE)
> 