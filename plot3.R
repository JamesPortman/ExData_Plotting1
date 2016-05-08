## File:        plot3.R
## Author:      James Portman
## Date:        May 8, 2016
## Description: Create a PNG file for the  plot required.

# Read the R code to load the power consumption data
source("load_consumption_data.R")

plot1 <- function(data=NULL) {
  
  # Load the data if not already loaded
  if (is.null(myDataFrame)){
    myDataFrame <- load_consumption_data.R()
  }
  
  # Create a PNG file in the current working directory
  png("plot3.png", width=400, height=400)
  
  # Create the required plot
  plot(myDataFrame$Time, myDataFrame$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_2, col="red")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_3, col="blue")
  legend( "topright", col=c("black", "red", "blue"),
          c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
  
  # Close the PNG file
  dev.off()
}

## End File:    plot3.R