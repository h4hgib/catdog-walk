
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(navbarPage(
  shinyjs::useShinyjs(),
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
             numericInput(inputId = "dog_age", label = "Dogs age in years",
                          value = 2),
             textInput(inputId = "dog_desc", label = "Description of dog"),
             textInput(inputId = "dog_tips", 
                       label = "Tips for walking this dog"),
             dateInput(inputId = "recieved_date", 
                       label = "Date dog recieved to Shelter",
                       format = "yyyy-mm-dd", startview = "year"),
             selectizeInput(inputId = "status", 
                         label = "Dog's availability to be walked",
                         choices = c("", "Available", "Vets", "Training",
                                     "Adopted")),
             dateInput(inputId = "unavail_from", label = "Unavailable from", 
                       format = "yyyy-mm-dd", startview = "year"),
             dateInput(inputId = "unavail_to", label = "Unavailable to",
                       format = "yyyy-mm-dd", startview = "year"),
             actionButton(inputId = "submit_dog", label = "Submit", 
                          class = "btn-primary")
             )
           ),
  
  # toggle walker db ----
  tabPanel("Walker Database",
           div(
             class = "jumbotron",
             id = "walker_form",
             fluidRow(column(width = 4,
                             textInput(inputId = "walker_fname", 
                                       label = "Forename", 
                                       value = "")),
                      column(width = 4,
                             textInput(inputId = "walker_sname", 
                                       label = "Surname", 
                                       value = ""))),
             textInput(inputId = "email",
                       label = "Email address"),
             selectizeInput(inputId = "walker_level",
                            label = "Dog walking Experience",
                            choice = c("", "beginner", "intermediate", "pro")),
             checkboxGroupInput(inputId = "pref_dog", 
                                label = "What size dogs would you like to walk",
                                choices = c("Small", "Medium", "Large"),
                                inline = T),
             br(),
             checkboxInput(inputId = "over18", 
                           label = "Please check if you 18 or over"),
             actionButton(inputId = "submit_walker", label = "Submit", 
                          class = "btn-primary")
           )
  )
))
