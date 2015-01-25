##Set Working Directory
wd <- getwd()

##Library Calls
library(ggplot2)

##Read Data
NEI <- readRDS(file.path(wd,"exdata-data-NEI_data/summarySCC_PM25.rds"))
SCC <- readRDS(file.path(wd,"exdata-data-NEI_data/Source_Classification_Code.rds"))

#Coal Data
coal <- grepl("Fuel Comb.*Coal", SCC$EI.Sector)
coal_sources <- SCC[coal,]

#Coal Emissions Data
coal_emissions <- NEI[(NEI$SCC %in% coal_sources$SCC), ]

#Group For Each Year
coal_emissions <- aggregate(Emissions ~ year, data = coal_emissions, FUN = sum)

##GGPLOT2 Plot
g <- ggplot(coal_emissions, aes(x = factor(year), y = Emissions)) +
        geom_bar(stat = "identity") +
        xlab("Year") +
        ylab(expression('Total PM'[2.5]*' Emissions')) +
        ggtitle('EMISSIONS FROM COAL COMBUSTION SOURCES')
png("plot4.png", height = 480, width = 480)
print(g)
dev.off()