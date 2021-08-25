#SAS to R - Introduction Course
#Arsenal Package - freqlist()
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#install packages
#install.packages("arsenal")

#add library reference
library(arsenal)

#read in covid dataset
covid <- read.csv("~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/covid.csv", header = TRUE)

#check dataset output
head(covid)


#freqlist() function 
#good for comparing summary percentages against categorical data

covid.t <- table(covid[c("result", "demo_group","gender")])

output_fl <- freqlist(covid.t, na.options = "include")

#print output summary
summary(output_fl)


#exercise 

#create a table "myfirsttable" from covid data using "result" as the response, and "payor_group", and "gender" as categories
#lets use the freqlist() function to pass in "myfirsttable" and remove na's as an option. Assign to "myfirstfl"
#print out the summary of "myfirstfl"


