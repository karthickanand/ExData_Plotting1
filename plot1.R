
eb <- read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors = FALSE)
eb$Date<-as.Date(eb$Date,"%d/%m/%Y")
eb1<-subset(eb,Date >="2007-02-01" & Date<="2007-02-02")
eb1$Global_active_power=as.numeric(eb1$Global_active_power)
hist(eb1$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts)")
dev.copy(png,file="plot1.png")
