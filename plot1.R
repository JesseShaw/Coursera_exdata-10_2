##Set Working Directory
wd <- getwd()

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))

##Aggregate Emission data
tot_emission <- aggregate(Emissions ~ year, NEI, sum)

##Base system plot
png('plot1.png'), height=480, width=480)
barplot(height = tot_emission$Emissions, 
        names.arg = tot_emission$year,
        col = "blue",
        xlab = "Year", 
        ylab = expression('Total PM'[2]*' Emissions'))
title(main = list(expression('TOTAL PM'[2]*' EMISSIONS BY YEAR'), font = 4))
dev.off()