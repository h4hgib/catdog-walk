# Set up working ---- 
rm(list=ls())

library(dplyr)
library(RSQLite)

# Make SQLITE connection and doggodb ----
sqlite <- dbDriver("SQLite")

doggodb <- dbConnect(sqlite, "shiny_app/doggo.db")

# CREATE TABLE QUERIES ----
dog_tbl <- data.frame(dog_id = integer(),
                 name = character(),
                 size = character(),
                 age = integer(),
                 description = character(),
                 tips = character(),
                 cover = character(),
                 date_recieved = as.Date(character()),
                 status = character())

dbWriteTable(conn = doggodb,
             name = "dog_tbl",
             value = dog_tbl)

walker_tbl <- data.frame()