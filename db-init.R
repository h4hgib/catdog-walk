# Set up working ---- 
rm(list=ls())

library(dplyr)
library(RSQLite)

# Make SQLITE connection
sqlite <- dbDriver("SQLite")

testdb <- dbConnect(sqlite, "shiny_app/testdb.db")
