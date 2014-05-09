

plot1 <- function(data) {
  
  #tell R that I want a png file output/capture
  png(filename ="plot1.png", width = 480, height = 480)
  
  #tell R I want a histogram
  hist(data$Global_active_power, freq=TRUE, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
  
  #turn off building png file
  dev.off()
  
}