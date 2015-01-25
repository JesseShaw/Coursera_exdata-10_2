##Set Working Directory
wd <- getwd()

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))

##Subset Baltimore Emmisions Data
baltimore_emissions <- NEI[NEI$fips == "24510",]

#Aggreagate Emissions By Year
baltimore_emissions <- aggregate(Emissions ~ year, baltimore_emissions, sum)

##Base system plot
png('plot2.png', height = 480, width = 480)
barplot(height = baltimore_emissions$Emissions, 
        names.arg = baltimore_emissions$year,
        col = "red",
        xlab = "Year", 
        ylab = expression('Total PM'[2]*' Emissions'))
title(main = list(expression('BALTIMORE: TOTAL PM'[2]*' EMISSIONS BY YEAR'), font = 4))
dev.off()