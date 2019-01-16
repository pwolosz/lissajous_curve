library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)

server <- function(input, output) {
  t <- seq(0,2*pi,by = 0.01)
  
  a_r <- reactive({
    input[["a_input"]]
  })
  
  b_r <- reactive({
    input[["b_input"]]
  })
  
  delta1_r <- reactive({
    input[["delta1_input"]]
  })
  
  delta2_r <- reactive({
    input[["delta2_input"]]
  })
  
  output[["plot_output"]] <- renderPlot({
    ggplot(data.frame()) +
      geom_path(aes(x = sin(a_r()*t+delta1_r()*pi), y = sin(b_r()*t+delta2_r()*pi), group = 1), size=1) +
      theme_bw() +
      scale_x_continuous(expand = c(0,0), limits = c(-1.1,1.1)) +
      scale_y_continuous(expand = c(0,0), limits = c(-1.1,1.1)) +
      labs(x = "", y = "")
  })
}
