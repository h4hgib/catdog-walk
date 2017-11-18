
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(navbarPage(
  title = "Animals In Need Foundation (Gibraltar)",
  # book dog walk ----
  tabPanel("Book Dog Walk!"),
  
  # toggle doggo db ----
  tabPanel("Doggo Database",
           div(
             class = "jumbotron",
             id = "doggo_form",
             textInput(inputId = "dog_name", label = "Dog's name", 
                       value = ""),
             selectizeInput(inputId = "dog_size", label = "Size of dog",
                            choices = c("", "Small", "Medium", "Large")),
             actionButton(inputId = "submit", label = "Submit", 
                          class = "btn-primary"))),
  
  # toggle walker db ----
  tabPanel("Walker Database")
))
