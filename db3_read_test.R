## File for reading the ROS2 bag file format (.db3)
## Created by Case Ashton for STAT600 final project
## EMAIL: case@tamu.edu


# ROS 2 Bag files are .db3 files (SQLite database files)
install.packages("RSQLite")
install.packages("dbDriver")

# This file will test the unpacking of the turtlebot tutorials the (subset/) folder
subset <- "subset/subset_0.db3"
sqlite.driver <- dbDriver("SQLite")
db <- dbConnect(sqlite.driver,
                dbname = subset)

## some operations
dnListTables(db)
mytable <- dbReadTable(db, "testing table")