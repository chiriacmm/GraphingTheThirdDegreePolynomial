#The application displays the graph of third degree polynomial. 
#The shape changes by selecting different a,b,c,d coeficients 
#for the following f(x) function f(x) = a*x^3+b*x^2+c*x+d


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Graph of the Third Degree Polynomial"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        h5("The application displays the graph of third degree polynomial. The shape changes by selecting different a,b,c,d coeficients for the below f(x) function below"),
        h5("f(x) = a*x^3+b*x^2+c*x+d"),
        numericInput("numeric", "How many random numbers will be ploted?",
                     value=100, min=1, max=500, step = 1),
        sliderInput("sliderX", "Pick Min and Max X values", -10, 10, value = c(-7,7)),
        sliderInput("sliderA", "Coeficient a", -100, 100, 1),
        sliderInput("sliderB", "Coeficient b", -100, 100, 2),
        sliderInput("sliderC", "Coeficient c", -100, 100, 3),
        sliderInput("sliderD", "Coeficient d", -100, 100, 4),
        checkboxInput("show_title", "Show/Hide Title", value=TRUE)

    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("Plot1")

    )
  )
))
