library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)

ui <- dashboardPage(
  dashboardHeader(title = "Krzywe Lissajous"
                  
  ),
  dashboardSidebar(
    sidebarMenu(
      id = "tabs-menu",
      menuItem("Ustawienia parametrów", tabName = "main-dashboard", icon = icon("dashboard")),
      sliderInput("a_input", "a:", min = 1, max = 20, step = 1, value = 1),
      sliderInput("b_input", "b:", min = 1, max = 20, step = 1, value = 1),
      sliderInput("delta1_input", "delta1: pi*", min = 0, max = 2, step = 0.25, value = 0),
      sliderInput("delta2_input", "delta2: pi*", min = 0, max = 2, step = 0.25, value = 0)
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        "main-dashboard",
        plotOutput("plot_output")
      )
      )
    )
  )
