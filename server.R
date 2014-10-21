library(shiny)
library(xlsx)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
    output$distPlot<-renderPlot({
      data<-read.xlsx("participation data.xlsx",sheetIndex=1)
      prate<-data[,15]
      weekday<-data[,4]
      hist(weekday,col='lightblue',border='white',main=paste("Histogram for Weekday of Lauch Date"))   
    })
    
    output$distplot1<-renderPlot({
      data<-read.xlsx("participation data.xlsx",sheetIndex=1)
      prate<-data[,15]
      weekday<-data[,4]
      bins<-seq(min(prate),max(prate),length.out=input$bins+1)
      hist(prate,breaks=bins,col='lightblue',border='white',main=paste("Histogram for the Distribution of Participation Rate"))   
    })

})