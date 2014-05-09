#plot4p.R
#Russ Robbins
#050914

plot4 <- function(data){
  
png(filename ="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(data$Global_active_power, type="l", xlab="", ylab="Global Active Power", lab=c(3,4,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))

plot(c(data$Voltage), type="l", xlab="datetime", ylab="Voltage", lab=c(3,7,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))

plot(c(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering", lab=c(3,4,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright","left",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1, bty="n")

plot(c(data$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power", lab=c(3,6,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))
dev.off()

}