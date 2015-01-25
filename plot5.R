##Set Working Directory
wd <- getwd()

##Library Calls
library(ggplot2)

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))

##Subset Baltimore Emissions Data
baltimore_emissions <- NEI[(NEI$fips == "24510") & (NEI$type == "ON-ROAD"),]
baltimore_emissions <- aggregate(Emissions ~ year, data = baltimore_emissions, FUN = sum)

##GGPLOT2 Plot
g <- ggplot(baltimore_emissions, aes(x = factor(year), y = Emissions)) +
        geom_bar(stat = "identity", fill = "red", colour = "black") +
        xlab("Year") +
        ylab(expression('Total PM'[2]*' Emissions')) +
        ggtitle(expression('BALTIMORE: PM'[2.5]*paste(' VEHICLE EMISSIONS BY YEAR')))
png("plot5.png", height = 480, width = 480)
print(g)
dev.off()