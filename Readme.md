{\rtf1\ansi\ansicpg1252\cocoartf1187\cocoasubrtf400
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;\f1\fnil\fcharset0 Monaco;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red255\green255\blue255;\red11\green81\blue160;
\red210\green0\blue53;\red245\green245\blue247;\red242\green242\blue242;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid101\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid201\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid3}
{\list\listtemplateid4\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid301\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid4}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}{\listoverride\listid4\listoverridecount0\ls4}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl840\sa200

\f0\b\fs40 \cf2 \cb3 Introduction\
\pard\pardeftab720\sl420\sa200

\b0\fs28 \cf2 Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the {\field{\*\fldinst{HYPERLINK "http://www.epa.gov/ttn/chief/eiinformation.html"}}{\fldrslt \cf4 EPA National Emissions Inventory web site}}.\
For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.\
\pard\pardeftab720\sl840\sa200

\b\fs40 \cf2 Data\
\pard\pardeftab720\sl420\sa200

\b0\fs28 \cf2 The data for this assignment are available from the course web site as a single zip file:\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl420
\ls1\ilvl0\cf4 {\listtext	\'95	}{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"}}{\fldrslt Data for Peer Assessment}}\cf2  [29Mb]\
\pard\pardeftab720\sl420\sa200
\cf2 The zip file contains two files:\
PM2.5 Emissions Data (
\f1\fs24 \cf5 \cb6 summarySCC_PM25.rds
\f0\fs28 \cf2 \cb3 ): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of 
\b tons
\b0  of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.\
\pard\pardeftab720\sl420

\f1\fs24 \cf2 \cb7 ##     fips      SCC Pollutant Emissions  type year\
## 4  09001 10100401  PM25-PRI    15.714 POINT 1999\
## 8  09001 10100404  PM25-PRI   234.178 POINT 1999\
## 12 09001 10100501  PM25-PRI     0.128 POINT 1999\
## 16 09001 10200401  PM25-PRI     2.036 POINT 1999\
## 20 09001 10200504  PM25-PRI     0.388 POINT 1999\
## 24 09001 10200602  PM25-PRI     1.490 POINT 1999\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl420\sa200
\ls2\ilvl0\cf5 \cb6 {\listtext	\'95	}fips
\f0\fs28 \cf2 \cb3 : A five-digit number (represented as a string) indicating the U.S. county\
\ls2\ilvl0
\f1\fs24 \cf5 \cb6 {\listtext	\'95	}SCC
\f0\fs28 \cf2 \cb3 : The name of the source as indicated by a digit string (see source code classification table)\
\ls2\ilvl0
\f1\fs24 \cf5 \cb6 {\listtext	\'95	}Pollutant
\f0\fs28 \cf2 \cb3 : A string indicating the pollutant\
\ls2\ilvl0
\f1\fs24 \cf5 \cb6 {\listtext	\'95	}Emissions
\f0\fs28 \cf2 \cb3 : Amount of PM2.5 emitted, in tons\
\ls2\ilvl0
\f1\fs24 \cf5 \cb6 {\listtext	\'95	}type
\f0\fs28 \cf2 \cb3 : The type of source (point, non-point, on-road, or non-road)\
\ls2\ilvl0
\f1\fs24 \cf5 \cb6 {\listtext	\'95	}year
\f0\fs28 \cf2 \cb3 : The year of emissions recorded\
\pard\pardeftab720\sl420\sa200
\cf2 Source Classification Code Table (
\f1\fs24 \cf5 \cb6 Source_Classification_Code.rds
\f0\fs28 \cf2 \cb3 ): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source \'9310100101\'94 is known as \'93Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal\'94.\
You can read each of the two files using the 
\f1\fs24 \cf5 \cb6 readRDS()
\f0\fs28 \cf2 \cb3  function in R. For example, reading in each file can be done with the following code:\
\pard\pardeftab720\sl420

\f1\fs24 \cf2 \cb7 ## This first line will likely take a few seconds. Be patient!\
NEI <- readRDS("summarySCC_PM25.rds")\
SCC <- readRDS("Source_Classification_Code.rds")\
\pard\pardeftab720\sl420\sa200

\f0\fs28 \cf2 \cb3 as long as each of those files is in your current working directory (check by calling 
\f1\fs24 \cf5 \cb6 dir()
\f0\fs28 \cf2 \cb3  and see if those files are in the listing).\
\pard\pardeftab720\sl840\sa200

\b\fs40 \cf2 Assignment\
\pard\pardeftab720\sl420\sa200

\b0\fs28 \cf2 The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999\'962008. You may use any R package you want to support your analysis.\
\pard\pardeftab720\sl840\sa200

\b\fs32 \cf2 Questions\
\pard\pardeftab720\sl420\sa200

\b0\fs28 \cf2 You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl420\sa200
\ls3\ilvl0\cf2 {\listtext	1.	}Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the 
\b base
\b0  plotting system, make a plot showing the 
\i total
\i0  PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.\
{\listtext	2.	}Have total emissions from PM2.5 decreased in the 
\b Baltimore City
\b0 , Maryland (
\f1\fs24 \cf5 \cb6 fips == "24510"
\f0\fs28 \cf2 \cb3 ) from 1999 to 2008? Use the 
\b base
\b0  plotting system to make a plot answering this question.\
{\listtext	3.	}Of the four types of sources indicated by the 
\f1\fs24 \cf5 \cb6 type
\f0\fs28 \cf2 \cb3  (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999\'962008 for 
\b Baltimore City
\b0 ? Which have seen increases in emissions from 1999\'962008? Use the 
\b ggplot2
\b0  plotting system to make a plot answer this question.\
{\listtext	4.	}Across the United States, how have emissions from coal combustion-related sources changed from 1999\'962008?\
{\listtext	5.	}How have emissions from motor vehicle sources changed from 1999\'962008 in 
\b Baltimore City
\b0 ?\
{\listtext	6.	}Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in 
\b Los Angeles County
\b0 , California (
\f1\fs24 \cf5 \cb6 fips == "06037"
\f0\fs28 \cf2 \cb3 ). Which city has seen greater changes over time in motor vehicle emissions?\
\pard\pardeftab720\sl840\sa200

\b\fs32 \cf2 Making and Submitting Plots\
\pard\pardeftab720\sl420\sa200

\b0\fs28 \cf2 For each plot you should\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl420\sa200
\ls4\ilvl0\cf2 {\listtext	\'95	}Construct the plot and save it to a 
\b PNG file
\b0 .\
{\listtext	\'95	}Create a separate R code file (
\f1\fs24 \cf5 \cb6 plot1.R
\f0\fs28 \cf2 \cb3 , 
\f1\fs24 \cf5 \cb6 plot2.R
\f0\fs28 \cf2 \cb3 , etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file. Only include the code for a single plot (i.e.
\f1\fs24 \cf5 \cb6 plot1.R
\f0\fs28 \cf2 \cb3  should only include code for producing 
\f1\fs24 \cf5 \cb6 plot1.png
\f0\fs28 \cf2 \cb3 )\
{\listtext	\'95	}Upload the PNG file on the Assignment submission page\
{\listtext	\'95	}Copy and paste the R code from the corresponding R file into the text box at the appropriate point in the peer assessment.\
}