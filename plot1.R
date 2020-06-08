
setwd("C:/Users/DELL/Desktop/STUDY/DS/data")

power <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

power$Date <- as.Date(power$Date, format = "%d/%m/%Y")

power <- subset(power, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

attach(power)
hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")

dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
detach(power)