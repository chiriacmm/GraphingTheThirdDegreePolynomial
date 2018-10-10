#The application displays the graph of third degree polynomial. 
#The shape changes by selecting different a,b,c,d coeficients 
#for the following f(x) function f(x) = a*x^3+b*x^2+c*x+d


library(shiny)


shinyServer(function(input, output) {

      output$Plot1 <- renderPlot({

# receiving the parameters from user interface
      no_of_points<- input$numeric
      minX<-input$sliderX[1]
      maxX<-input$sliderX[2]
      a<-input$sliderA
      b<-input$sliderB
      c<-input$sliderC
      d<-input$sliderD
#calculate sequence step
      seq_step = (maxX-minX) / no_of_points
#generate vector for x values
      dataX <- seq(minX, maxX, seq_step)
#calculate vector for y values 
      dataY <- a* dataX^3 - b*dataX^2 + c*dataX + d

#generate string for the title
      func_title = paste("f(x) = ", paste("(", paste(a, paste(") * x^3 + (", paste(b, paste(") * x ^2 + (", paste(c, paste(") * x + (", paste(d,")")))))))))

      main<-ifelse(input$show_title, func_title,"")
#ploting data
      plot(dataX, dataY, xlab = "X", ylab = "Y", main = main, panel.first = grid())
      
      })


})
