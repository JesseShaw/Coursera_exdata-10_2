##Set Working Directory
wd <- getwd()

##Library Calls
library(ggplot2)

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))

##Subset Baltimore Emmisions Data
baltimore_emissions <- NEI[NEI$fips=="24510",]

#Aggreagate Emissions By Year And Source Type
baltimore_emissions <- aggregate(Emissions ~ year + type, data = baltimore_emissions, FUN = sum)

##GGPLOT2 Plot
g <- ggplot(baltimore_emissions, aes(x = factor(year), y = Emissions, fill = type)) +
        geom_bar(stat = "identity") +
        facet_grid(. ~ type) +
        xlab("Year") +
        ylab(expression('Total PM'[2]*' Emissions')) +
        ggtitle(expression('BALTIMORE: PM'[2.5]*paste(' EMISSIONS BY TYPE AND YEAR')))
png("plot3.png", height = 480, width = 480)
print(g)
dev.off()