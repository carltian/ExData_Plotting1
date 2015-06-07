png(file="plot1.png",width=480,height=480)
df <- read.csv.sql("household_power_consumption.txt",sql="select * from file where Date in ('1/2/2007','2/2/2007')",header=TRUE,sep=";")
with(df, hist(df$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power"))
dev.off()
