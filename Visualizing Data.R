#SAS to R - Introduction Course
#Introduction - Visualizing Data
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#add library reference for dataset
library(tidyverse)

#load star wars dataset
data("starwars")


#use filter to subset dataset to just humans and droids
human_droid <- starwars %>%
  filter(species %in% c("Human", "Droid")) %>%
  drop_na(height, mass) #drop rows with missing height or mass 


#first specify dataset and x/y variables 
#tell ggplot to make a scatter plot using geom_point()
#add in titles and axis labels 
starwars_plot <- ggplot(data=human_droid, aes(x=height, y=mass))+
  geom_point(aes(color=species)) +
  ggtitle("Mass vs Height for humans and droids") +
  xlab("Height (cm)") + ylab("Mass (kg)")

#output
starwars_plot


