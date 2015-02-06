data<-read.table("household_power_consumption.txt",sep=";",header=TRUE, colClasses=c("factor","factor","real","real","real","real","real","real","real"),na.strings="?")
data2<-subset(data, (data$Date == "1/2/2007") | (data$Date == "2/2/2007"))
hist(data2$Global_active_power,main="Global Active Power",xlab="Global Active Power(Kilowatts)", col="red")
dev.copy(png,file="plot1.png")
dev.off()

