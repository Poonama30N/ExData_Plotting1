
data<-read.table("household_power_consumption.txt",sep=';',header = TRUE)

reqdata<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

#Plot1
str(reqdata)
globalActivePower <- as.numeric(reqdata$Global_active_power)

png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()
