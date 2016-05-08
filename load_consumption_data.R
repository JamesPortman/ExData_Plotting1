## File:        load_consumption_data.R
## Author:      James Portman
## Date:        May 8, 2016
## Description: Load the Individual household electric power consumption Data Set

# Assumse text file is in current working directory.
filename <- "household_power_consumption.txt"

myDataFrame <- read.table(filename, header=TRUE, sep=";", 
                          colClasses=c("character", "character", rep("numeric",7)), na="?")
  
# Convert date and time variables to Date and Time classes
myDataFrame$Time <- strptime(paste(myDataFrame$Date, myDataFrame$Time), "%d/%m/%Y %H:%M:%S")
myDataFrame$Date <- as.Date(myDataFrame$Date, "%d/%m/%Y")
  
# Create a subset of the data between 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
myDataFrame <- subset(myDataFrame, Date %in% dates)

## End File:    load_consumption_data.R