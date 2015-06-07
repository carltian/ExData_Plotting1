library(sqldf)
if (!file.exists("household_power_consumption.txt")) {
        if (!file.exists("household_power_consumption.zip")) {
                url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                download.file(url, destfile="./household_power_consumption.zip", method="curl")
                unzip("household_power_consumption.zip")
         } else {
  	        unzip("household_power_consumption.zip")
	 }
}
png(file="plot1.png",width=480,height=480)
df <- read.csv.sql("household_power_consumption.txt",sql="select * from file where Date in ('1/2/2007','2/2/2007')",header=TRUE,sep=";")
with(df, hist(Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power"))
dev.off()
