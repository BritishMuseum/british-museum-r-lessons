#-------------------------------------Tree Map Lesson Code-------------------------------------------- 
#Author : Alice Daish
#British Museum 
#Date: 03/11/2016

#CODE OBJECTIVE : To teach how to create a tree map for survey data of what people do in their spare time?

#---LOAD PACKAGES------------------------------------------------------------------------------------- 
install.packages("treemap") #install the package called treemap
library(treemap) #tell R you want to use it now it is install onto your machine

#------Getting Started--------------------------------------------------------------------------------- 
#Install Data and set working directory
#Set the working directory tells R where you want it to find data and files
setwd("C:\\RLessons") 

#--------Load Activities Data------------------------------------------------------------------------ 
actdata<-read.csv("activitieslist.csv",header=TRUE) #Now you have told R where you have stored the data - tell it so read data you have including the names of the columns
View(data) #View the data  - so you can check R has your data


#---TREEMAP creation----------------------------------------------------------------------------------- 
#https://www.rdocumentation.org/packages/treemap/versions/2.4-1/topics/treemap

#Create tree map 
treemap(actdata, #tell R what data you want to use
        index="activities", #tell R what events you would like it to plot
        vSize="count",  #tell R what quantity you would like it to plot
        type="index")  #what type of treemap do you want to use

#Save your first tree map
map1<-treemap(actdata, #tell R what data you want to use
              index="activities", #tell R what events you would like it to plot
              vSize="count",  #tell R what quantity you would like it to plot
              type="index")  #what type of treemap do you want to use

#Add a title and change the colours
#Red to green colours treemap
map2<-treemap(actdata,
              index="activities",
              vSize="count",
              palette = "RdYlGn", #Try different colour use the link above
              type="index",
              title="Treemap of spare time activities") #Add title

#Bright colours treemap
map3<-treemap(actdata,
              index="activities",
              vSize="count",
              palette = "Set1", #Try different colour use the link above
              type="index",
              title="Treemap of spare time activities") #Add title

#Red treemap
map4<-treemap(actdata,
              index="activities",
              vSize="count",
              palette = "Reds", #Try different colour use the link above
              type="index",
              title="Treemap of spare time activities") #Add title

#------------------------END----------------------------------------------------------------------------
