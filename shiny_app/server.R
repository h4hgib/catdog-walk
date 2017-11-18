
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  fields_dog <- c("dog_name", "dog_size", "dog_age", "dog_desc", "dog_tips",
                     "recieved_date", "status", "unavail_from", "unavail_to")
  
  fields_walker <- c("walker_fname", "walker_sname", "email", "walker_level", 
                     "pref_dog", "over18")
  
  test <- reactive(data.frame(input$walker_fname, input$walker_sname#,
                              #input$email, input$walker_level, input$pref_dog,
                              #input$over18
                              ))
  
  observeEvent(input$submit_walker, {
  write.csv(x = test(), file = "./responses/test.csv")
  })
})
