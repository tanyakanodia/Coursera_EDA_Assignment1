setwd("C:/Users/Tanki/Desktop/assignment/Coursera_EDA_Assignmnt1")
data_f<- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.string = "?")
data<- data_f[data_f$Date %in% c("1/2/2007","2/2/2007") ,]
#converting time
datetime<- strptime(paste(data$Date,data$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)
#plotting
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l",xlab="",ylab="Global Active Power (kilowatts)")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend(c("topright"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
dev.off()

