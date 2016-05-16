library(XML)
library(tidyr)
library(dplyr)
library(magrittr)

#assign data type to head coach table
hcdatatype <- c("character","character","character","character","integer",NULL,NULL)

#grab html table
nbaHCimport <- readHTMLTable("http://basketball.realgm.com/nba/staff-members/20/Head-Coach/Historical", header = TRUE, colClasses = hcdatatype, stringsAsFactors = FALSE)

View(nbaHCimport) #this is the problem (i think) the headers all start with NULL
str(nbaHCimport)

#separate End Season into 2 separate year columns
seasonsep <- separate(NULL.End.Season, C("ESS","ESF"), sep = "-")