#SAS to R - Introduction Course
#fmtr Package
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#install packages
#install.packages("sassy")

#add library reference
library(fmtr)

#create sample vector to format
sample.v <- c(6.3598, 7.568863, 1.1233, 5.66874)

#apply format of 1 decimal place
fapply(sample.v, "%1.1f")

#format parameter can also be assigned as an attribute on the vector
#create sample vector to format
sample.v <- c(6.3598, 7.568863, 1.1233, 5.66874)

#assign format attribute
attr(sample.v, "format") <- "%1.1f"

#apply format
fapply(sample.v)


#assigning multiple formatting attributes
#create sample vector to format
sample.v <- c(6.3598, 7.568863, 1.1233, 5.66874)

#assign formatting attributes
sample.v <- fattr(sample.v, format = "%1.1f", width = 5, justify = "right")

#apply formatting attributes
fapply(sample.v) #notice the padding to the left when there is additional spaces in width

#Lookup Vectors
#create sample vector 
sample.v2 <- c("A", "B", "C", "A", "B", "B")

#create a lookup vector 
lookup.v2 <- c(A = "Group A", B = "Group B", C="Group C")

#apply lookup to sample.v2
fapply(sample.v2, lookup.v2)


#Create formatting catalog 
date.format <- fcat(num_fmt="%.1f",date_fmt = "%d%b%Y")

#write catalog to working directory 
write.fcat(date.format, dir_path = '~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/')

#read in catalog format
read.fcat("date.format.fcat")

#example date
Sys.Date()

#formatted date
fapply(Sys.Date(), date.format$date_fmt)




#Exercise 

#read in exercise.v vector
#use attr() to assign exercise.v a format two decimals as precision
#use fapply() to apply the formatting attribute to exercise.v

#format parameter can also be assigned as an attribute on the vector
#create sample vector to format
exercise.v <- c(2.3598444, 77.568863, 11.1233, 5199.66874)

#assign format attribute


#apply format







