#SAS to R - Introduction Course
#Introduction - Assigning Variables 
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#do a few calculations, store the results in variables x and y
x <- 32*4
y <-3

#create a third variable from x and y
z <- x/y

z


#More complicated structures 

library(tidyverse)

# c() function concatenates arguments together 
pop <- c(234, 567, 10000)
area_sq_mi <- c(83.78,46.87,503)
city <- c("Seattle", "San Francisco", "L.A")

#outputs
pop
area_sq_mi
city

#dataframe example
city_info.d <- data.frame(pop, area_sq_mi, city)
city_info.d

#tibble example
city_info <- tibble(pop, area_sq_mi, city)
city_info
