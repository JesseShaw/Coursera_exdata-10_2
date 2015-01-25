##Set Working Directory
wd <- getwd()

##Library Calls
library(ggplot2)

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))

##Segment Baltimore Vehicle Emissions
baltimore_emissions <- NEI[(NEI$fips == "24510") & (NEI$type == "ON-ROAD"),]
baltimore_emissions <- aggregate(Emissions ~ year, data = baltimore_emissions, FUN = sum)

##Segment Los Angeles Vehicle Emissions
los_angeles_emissions <- NEI[(NEI$fips == "06037") & (NEI$type == "ON-ROAD"),]
los_angeles_emissions <- aggregate(Emissions ~ year, data = los_angeles_emissions, FUN = sum)

##Join Vehicle Emissions Data
baltimore_emissions$County <- "Baltimore City, MD"
los_angeles_emissions$County <- "Los Angeles County, CA"
total_emissions <- rbind(baltimore_emissions, los_angeles_emissions)

##GGPLOT2 Plot
g <- ggplot(total_emissions, aes(x = factor(year), y = Emissions, fill = County)) +
        geom_bar(stat = "identity", fill = "blue", colour = "black") +
        facet_grid(County  ~ ., scales = "free") +
        xlab("Year") +
        ylab(expression('Total Emissions (tons)')) +
        ggtitle('BALTIMORE and Los Angeles:\nVEHICLE EMISSIONS BY YEAR')
png("plot6.png", height = 480, width = 480)
print(g)
dev.off()