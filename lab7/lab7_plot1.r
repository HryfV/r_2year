
NEI<-readRDS("D:/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC<-readRDS("D:/exdata_data_NEI_data/Source_Classification_Code.rds")
##Sums of emissions by year
sums<-aggregate(Emissions~year, NEI, sum)
format(sums$Emissions,scientific=FALSE)
##[1] "7332967" "5635780" "5454703" "3464206"

png("plot1.png", width=480, height=480)
plot(sums, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 from all U.S. Sources", xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()
##Total PM2.5 emissions in the United States from 1999 to 2008 had decreased