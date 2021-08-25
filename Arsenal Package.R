#SAS to R - Introduction Course
#Arsenal Package
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

#########################################

#tableby() function 
#good for comparing summary percentages against categorical data
output <- tableby(result ~ patient_class + gender, covid)

#print output summary
summary(output, text=TRUE)

write2pdf(output, "~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/output_tableby()")  #issues with pdf latex installation


##########################################

#freqlist() function 
#good for comparing summary percentages against categorical data

covid.t <- table(covid[c("result", "demo_group", "gender", "payor_group")])

output_fl <- freqlist(covid.t, na.options = "include")

#print output summary
summary(output_fl)

##########################################

#paired function
#useful for comparing data points across periods of time
#paired()

#print output summary
#summary(output, text=TRUE)
 
######################################### 

#requires broom and pROC package
#install.packages("broom")
#install.packages("pROC")
library(broom)
library(pROC)

#modelsum() function 
#useful for identifying variables of interest in R mathematical models

covid_ms <- covid
covid_ms$result[covid_ms$result == "negative"] <- 0
covid_ms$result[covid_ms$result == "positive"] <- 1
covid_ms$result <- as.numeric(covid_ms$result)
typeof(covid_ms$result)
head(covid_ms)

#narrow down variables in dataset, but a useful package
output.m <-  modelsum(result ~ patient_class + gender, family="binomial", data = covid_ms)

summary(output.m, text = TRUE)

##########################################

#install rmarkdown
#install.packages("rmarkdown")
library(rmarkdown)

#write2word
#useful for replicating SAS ODS
write2html(output.m, "~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/output_m")
write2pdf(output_fl, "~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/output_fl")  #issues with pdf latex installation
write2word(output_fl, "~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/output_fl")

#print output summary
summary(output, text=TRUE)

######################################### 
