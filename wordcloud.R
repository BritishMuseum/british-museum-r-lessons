#-------------------------------------WordCloud Lesson Code-------------------------------------------- 
#Author : Alice Daish
#British Museum 
#Date: 03/11/2016

#CODE OBJECTIVE : To teach how to create a wordcloud for survey data of what people do in their spare time? And what people search on the british museum website

#---LOAD PACKAGES------------------------------------------------------------------------------------- 
install.packages("wordcloud") #install the package called wordcloud
library(wordcloud) #tell R you want to use it now it is install onto your machine

#------Getting Started--------------------------------------------------------------------------------- 
#Install Data and set working directory
#Set the working directory tells R where you want it to find data and files
setwd("C:\\RLessons") 

#--------Load Activities Data--------------------------------------------------------------------------
actdata<-read.csv("activitieslist.csv",header=TRUE) #Now you have told R where you have stored the data - tell it so read data you have including the names of the columns
View(data) #View the data  - so you can check R has your data

#------Creating a WordCloud---------------------------------------------------------------------------
#Create a word cloud using the activities data
wordcloud1<-wordcloud(actdata$activities,actdata$count,scale=c(1.5,1),
                       min.freq=1,          #Minimum word size quantity
                       max.words=Inf,       #Max word size quantity
                       random.order=FALSE,  #Order of words
                       random.color=FALSE,  #Order of colours
                       rot.per=.35,         #Rotation of words
                       colors=brewer.pal(8, "Dark2")) #Set the colours #Try different brewer colours

#--------Load Words Searched Data----------------------------------------------------------------------
augustdata<-read.csv("augustsearch.csv",header=TRUE) #Now you have told R where you have stored the data - tell it so read data you have including the names of the columns
View(data1) #View the data  - so you can check R has your data

#------Creating a WordCloud---------------------------------------------------------------------------
#Create a word cloud using the activities data
wordcloud2<-wordcloud(augustdata$terms,augustdata$searches,scale=c(3,.1),
                      min.freq=1,          #Minimum word size quantity
                      max.words=Inf,       #Max word size quantity
                      random.order=FALSE,  #Order of words
                      random.color=FALSE,  #Order of colours
                      rot.per=.35,         #Rotation of words
                      colors=brewer.pal(8, "Dark2")) #Set the colours #Try different brewer colours

#----------------------END-----------------------------------------------------------------------------
