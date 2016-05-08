## File:        plot2.R
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
  png("plot2.png", width=400, height=400)
  
  # Create the required plot
  plot(myDataFrame$Time, myDataFrame$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  # Close the PNG file
  dev.off()
}

## End File:    plot2.R