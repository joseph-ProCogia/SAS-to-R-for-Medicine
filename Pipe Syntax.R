#SAS to R - Introduction Course
#Introduction - Pipe Syntax 
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#add tidyverse reference for table1
library(tidyverse)
data("table1")

head(table1)

#filter, then mutate, then arrange
tb_summary <- arrange(
  mutate(
    filter(
      table1, country %in% c("Afghanistan", "China")
    ), incidence=100000*cases/population),
  -incidence
)

#output 
tb_summary


#piping syntax
table1 %>% #start with WHO data
  filter(country %in% c("Afghanistan", "China")) %>% #AND THEN filter
  mutate(incidence=100000*cases/population) %>% #AND THEN mutate
  arrange(-incidence) #AND THEN sort with arrange()



#Exercise 3.1

#use the filter() function to filter table1 down to countries Brazil and China
#AND THEN apply the mutate function to get the incidence formula used above 
#AND THEN sort data in ascending order using arrange()






