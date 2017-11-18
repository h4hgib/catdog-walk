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

walker_tbl <- data.frame(walker_id = integer(),
                         name = character(),
                         email = character(),
                         phone_no = character(),
                         level = character(),
                         over_18 = logical(),
                         dog_preference = character())

dbWriteTable(conn = doggodb,
             name = "walker_tbl",
             value = walker_tbl)

walk_log_tbl <- data.frame(walk_id = integer(),
                           date = as.Date(character()),
                           person_id = integer(),
                           dog_id = integer(),
                           booked_in_advanced = logical(),
                           incidents = character())

dbWriteTable(conn = doggodb,
             name = "walk_log_tbl",
             value = walk_log_tbl)