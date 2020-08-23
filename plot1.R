household_power_consumption <- read.csv("D:/ONLINE STUDIES/Coursera - 1/Exploratory Data Analysis/household_power_consumption.txt", header=T, sep=";")
FULLDATA<-household_power_consumption
subSetData <- FULLDATA[FULLDATA$Date %in% c("1/2/2007","2/2/2007") ,]
plot1 <- function(data) {
#tell R that I want a png file output/capture
png(filename ="plot1.png", width = 480, height = 480)
#tell R I want a histogram
hist(data$Global_active_power, freq=TRUE, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
#turn off building png file
dev.off()
}
