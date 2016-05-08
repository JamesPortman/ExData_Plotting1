## File:        plot1.R
## Author:      James Portman
## Date:        May 8, 2016
## Description: Create a PNG file for the first plot required.

# Read the R code to load the power consumption data
source("load_consumption_data.R")

plot1 <- function(data=NULL) {
  
  # Load the data if not already loaded
  if (is.null(myDataFrame)){
    myDataFrame <- load_consumption_data.R()
  }
  
  # Create a PNG file in the current working directory
  png("plot1.png", width=400, height=400)
  
  # Create the required histogram
  hist (myDataFrame$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  # Close the file
  dev.off()
}

## End File:    plot1.R