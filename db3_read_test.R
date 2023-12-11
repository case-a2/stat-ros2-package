## File for reading the ROS2 bag file format (.db3)
## Created by Case Ashton for STAT600 final project
## EMAIL: case@tamu.edu


# ROS 2 Bag files are .db3 files (SQLite database files)
# Install package for reading SQL db files if you haven't

# install.packages(c("RSQLite", "DBIDriver", "ggplot2"))
install.packages('dplyr')
library(RSQLite)
library(DBI)
library(ggplot2)
library(dplyr)


# This file will test the unpacking of the turtlebot tutorials the (subset/) folder
subset <- "subset/subset_0.db3"
ur3_move <- "ur3_move/ur3_move_0.db3"
ur <- dbConnect(RSQLite::SQLite(), dbname = ur3_move)
tables <- dbListTables(ur)
print(tables)

message_data <- dbReadTable(ur, "messages")

sqlite.driver <- dbDriver("SQLite")

turt <- dbConnect(RSQLite::SQLite(), dbname = subset)
turt_message <- dbReadTable(turt, "messages")

query <- "SELECT data FROM messages"

blob_data <- dbGetQuery(ur, query)



