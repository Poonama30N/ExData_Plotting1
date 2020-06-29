#Plot2
data<-read.table("household_power_consumption.txt",sep=';',header = TRUE)
subdata <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

# Transforming the Date and Time into objects of type Date and POSIXlt respectively
subdata$Date <- as.Date(subdata$Date, format="%d/%m/%Y")
subdata$Time <- strptime(subdata$Time, format="%H:%M:%S")
subdata[1:1440,"Time"] <- format(subdata[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subdata[1441:2880,"Time"] <- format(subdata[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# calling the basic plot function
png("plot2.png", width=480, height=480)

plot(subdata$Time,as.numeric(as.character(subdata$Global_active_power)),
     type="l",xlab="",ylab="Global Active Power (kilowatts)",
     main="Global Active Power Vs Time") 

dev.off()
