NEI<-readRDS("D:/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC<-readRDS("D:/exdata_data_NEI_data/Source_Classification_Code.rds")
##Sums of emissions by year
sums2<-aggregate(Emissions~fips+year, NEI, sum)
Baltimore<-subset(sums2, fips=="24510")

png("plot2.png", width=480, height=480)
plot(Baltimore$year, Baltimore$Emissions, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 from all Sources in Baltimore, Maryland", xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()
##Total PM2.5 emissions in Baltimore from 1999 to 2002 had decreased, from 2002 to 2005 had increased, and from 2005 to 2008 had decreased also