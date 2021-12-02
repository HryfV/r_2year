install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
NEI<-readRDS("D:/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC<-readRDS("D:/exdata_data_NEI_data/Source_Classification_Code.rds")
##Making dataset with sums of emissions by year
sums3<-aggregate(Emissions~fips+type+year, NEI, sum)
Baltimore<-subset(sums3, fips=="24510")

library(ggplot2)
png("plot3.png", width=480, height=480)
qplot(x=year, y=Emissions, data=Baltimore, facets=.~type, geom = c("point", "line"), xlab = "Year", ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 by the Type of Source in Baltimore, Maryland", color=type)
dev.off()
##Answer-Baltimore