#plot3.R
#Russ Robbins
#050914

plot3 <-function(data){

png(filename ="plot3.png", width = 480, height = 480)
plot(c(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering", lab=c(3,4,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright","left",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.off()

}