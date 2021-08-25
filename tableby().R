#SAS to R - Introduction Course
#Arsenal Package-tableby()
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#add library reference
library(rmarkdown)
library(arsenal)

#read in covid dataset
covid <- read.csv("~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/covid.csv", header = TRUE)

#check first few observations
head(covid)

#tableby() function 
#good for comparing summary percentages against categorical data
output <- tableby(result ~ patient_class + gender, covid)

#print output summary
summary(output, text=TRUE)

#create pdf output
write2pdf(output2, "~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/output_tableby()") 


#exercise 

#lets create output2 variable and assign it the tableby() function 
#pass in result as the category of interest and patient_class + demo_group as the groups
#lets use the write2html function to create an output of output2

