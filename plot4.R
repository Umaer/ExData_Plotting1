##For plot 4

require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Query1 <- read.csv.sql(myFile,mySql)

DateTime <- paste(Query1$Date, Query1$Time, sep = " ")
DateTime <- strptime(DateTime, format = "%d/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))


plot(DateTime,Query1$Global_active_power,type="l",xlab="",ylab="Global Active 
Power (kilowatts)")


plot(DateTime,Query1$Voltage,type="l",xlab="dateframe",ylab="Voltage")



plot(DateTime,Query1$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(Query1$Sub_metering_2,type="l",col="Red")
lines(Query1$Sub_metering_3,type="l",col="Blue")
axis(1, at=c(1,1440,2880), lab=c("Thu","Fri","Sat"))
legend(1800,38,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))

plot(DateTime,Query1$Global_reactive_power,type="l",xlab="dateframe",ylab="Global_reactive_power")

dev.copy(png,'plot4.png')
dev.off()
