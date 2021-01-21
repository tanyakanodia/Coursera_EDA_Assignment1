setwd("\Users\Tanki\Documents\data\exdata_data_household_power_consumption")
data_f<- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.string = "?")
data <- data_f[data_f$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()