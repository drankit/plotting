#plot2.R
#Russ Robbins
#050914

plot2 <- function(data){

png(filename ="plot2.png", width = 480, height = 480)
plot(data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", lab=c(3,4,31) , xaxt = "n")
axis(side=1, at=c(1, 1442, 2881), labels=c("Thu","Fri","Sat"))
dev.off()

}