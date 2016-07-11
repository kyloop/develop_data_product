##Loading the shiny package
library(shiny)

##Define shiny UI
shinyUI(navbarPage(
  title='mtcars analysis table',
  tabPanel('Summary Analysis Table', DT::dataTableOutput('t1'))
))
    
