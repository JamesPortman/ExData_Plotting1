## File:        plot4.R
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
  png("plot4.png", width=400, height=400)
  
  # Create the required plots, 2 rows by 2 columns
  par(mfrow=c(2,2))
  
  # Plot 1 of 4
  plot(myDataFrame$Time, myDataFrame$Global_active_power, type="l", xlab="", ylab="Global Active Power")
 
  # Plot 2 of 4
  plot(myDataFrame$Time, myDataFrame$Voltage, type="l", xlab="datetime", ylab="Voltage")
 
  # Plot 3 of 4
  plot(myDataFrame$Time, myDataFrame$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_2, col="red")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_3, col="blue")
  legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lwd=0)
  
  # Plot 4 of 4
  plot(myDataFrame$Time, myDataFrame$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
  lines(myDataFrame$Time, myDataFrame$Global_reactive_power)
  
  # Close the PNG file
  dev.off()
}

## End File:    plot4.R