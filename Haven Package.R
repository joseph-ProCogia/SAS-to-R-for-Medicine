#SAS to R - Introduction Course
#Haven Package
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#install tidyverse package
#install.packages("tidyverse")

#add library reference
library(haven)

#read in covid dataset
covid <- read.csv('covid.csv', header = TRUE, sep = ',')

#check the input
head(covid)

#write to sas dataset
write_sas(covid,'covid.sas7bdat')

#import data from SAS
covid.sas <- read_sas('covid.sas7bdat')

#check the input
head(covid.sas)