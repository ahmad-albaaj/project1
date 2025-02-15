#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("AM Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    ),
    sidebarPanel(
      sliderInput("bins",
                  "Farms:",
                  min = 1,
                  max = 100,
                  value = 60)
                  value = 50)
      
    )
  )
))
