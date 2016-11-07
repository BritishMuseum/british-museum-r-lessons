#-----------------------World Map Lesson Code-------------------------------------------
#Author : Alice Daish
#British Museum 
#Date: 03/11/2016

#CODE OBJECTIVE : To create a worldmap

#--------------------------------Install Packages---------------------------------------
#install.packages("rworldmap") #install the package called rworldmap
library(rworldmap) #tell R you want to use it now it is install onto your machine

#------Getting Started-------------------------------------------------------------------
#Install Data and set working directory
#Set the working directory tells R where you want it to find data and files
setwd("C:\\RLessons") 

#---------------------------Load the data for august (Top 20 Countries)------------------
#Lets look at the visits from around the world. This is an example of the website visits to the British Museum for August 2016 (Top 20 Countries).
augdata<-read.csv("augustvisits.csv",header=TRUE) 
#Now you have told R where you have stored the data - tell it so read data you have including the names of the columns.

#---------------Create a World Map-------------------------------------------------------
#Tell R what data you want to match the country data to the country names on the map.
#Joining the data to a map
map<-joinCountryData2Map(augdata,joinCode = "NAME",nameJoinColumn = "country" )

#Creating a colour palette for the map
op <- palette(c("#ffffcc","#c2e699","#78c679","#238443")) #Light green to dark green colour palette

#Find quartile breaks
cut<- quantile(map@data[["visits"]],na.rm=TRUE) 

#Print the quartile breaks for labelling 
quantile(map@data[["visits"]],na.rm=TRUE)  

#Cut the data for the labelling
map@data[["number"]] <- cut(map@data[["visits"]],cut, include.lowest=TRUE)

#Add the legend names
levels(map@data[["number"]]) <- c("low","med","high","very high") #Type the legend colour quantile breaks

#--------Produce the map with legend-----------------------------------------------------
mapCountryData(map, #Use "map"
               nameColumnToPlot="number", #Column to plot
               catMethod="categorical",
               mapTitle="Top 25 Visiting Countries", #Add a title
               colourPalette="palette", #Use the colour palette assigned above
               oceanCol="lightblue",    #Change the colour to blue
               missingCountryCol="white") 

#----------END----------------------------------------------------------------------------

