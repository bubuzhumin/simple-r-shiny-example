library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  # Application title
  titlePanel("Hello Shiny!"),
 
  # Sidebar with a slider input for the number of bins
 sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distplot1"),
    plotOutput("distPlot")
    ),
  position=c("left","right"))

))