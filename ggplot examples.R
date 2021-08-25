#SAS to R - Introduction Course
#Introduction - ggplot examples
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#reference library
library(tidyverse)

#load iris data from tidyverse
data(iris)

# Look at data
head(iris)


# Create basic simple scatter plot
ggplot(data=iris, aes(x=Sepal.Length, Sepal.Width)) + # initialize ggplot object
  geom_point() # add scatter plot layer

# Color by Species
# map the color aesthetic to the variable Species within aes()
ggplot(data=iris, aes(x=Sepal.Length, Sepal.Width)) + 
  geom_point(aes(color=Species))


# Add title with ggtitle()
# customize axis labels
ggplot(data=iris, aes(x=Sepal.Length, Sepal.Width)) + 
  geom_point(aes(color=Species)) +
  ggtitle("Sepal Width vs Sepal Length")  + 
  xlab("Sepal length") + ylab("Sepal Width")


# Facetted by species
ggplot(data=iris, aes(x=Sepal.Length, Sepal.Width)) + 
  geom_point(aes(color=Species)) + 
  facet_wrap(~Species) +
  ggtitle("Sepal Width vs Sepal Length")  + 
  xlab("Sepal length") + ylab("Sepal Width")


## More examples with diamonds dataset
data(diamonds)

head(diamonds)

# bar chart
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill=cut))

# histogram 
ggplot(data = diamonds) + 
  geom_histogram(mapping = aes(x = price), fill='blue')

# histogram, specify custom binwidth
# can use hex RGB values to customize fill color
ggplot(data = diamonds) + 
  geom_histogram(mapping = aes(x = price, fill=price), binwidth = 1000, fill="#42ddf5")

# continuous density estimate
ggplot(data = diamonds) + 
  geom_density(mapping = aes(x = price), fill="#42ddf5")

# boxplot
ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x = cut, y=price), fill="#42ddf5")

# boxplot, customize with transparency (alpha) and outlier display
ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x = cut, y=price), fill="#42ddf5", alpha=0.4,
               outlier.shape = 1, outlier.color='red', outlier.size = 0.2) 
  
