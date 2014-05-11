## For plot 1
require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Query1 <- read.csv.sql(myFile,mySql)
hist(Query1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png')
dev.off()