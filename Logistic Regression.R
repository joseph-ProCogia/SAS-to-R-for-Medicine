#SAS to R - Introduction Course
#Logistic Regression 
#ProCogia - Higher Intelligence. Deeper Insights. Smarter Decisions.
#joseph@procogia.com

#install packages
#install.packages("MASS")

#library references
library(MASS)
library(tidyverse)

#read in BreastCancer dataset
breastCancer <- read.csv("~/OneDrive - ProCogia/Desktop/SAS to R/Presentations/SAS to R for Medicine/R Programs/BreastCancer.csv", header = TRUE)

#check column names
colnames(breastCancer)

#check first 5 observations
head(breastCancer)

#check summary of the data
summary(breastCancer)

#lets remove ID from the dataset
breastCancer <- breastCancer[-1]

#check to see everything is in order
head(breastCancer)

#lets try to fit a general model with all variables
#glm.fit <- glm(Class ~ ., data = breastCancer, family = binomial)

#lets recode the response and change the type
breastCancer$Class[breastCancer$Class=='benign'] <-0 #change benign values in class to 0
breastCancer$Class[breastCancer$Class=='malignant'] <-1 #change the malignant values to 1
breastCancer$Class <- as.numeric(breastCancer$Class) #change y response to numeric for binary model

#check the output
head(breastCancer)

#lets fit a general logistic model
glm.fit <- glm(Class ~ ., data = breastCancer, family = binomial) #we can model all the data using the family=binomial in the glm function

#check the summary of the binary model
summary(glm.fit)

#lets check the coefficients
coef(glm.fit)

#lets run a stepwise model based on AIC score
glm.fit <- glm(Class ~ ., data = breastCancer, family = binomial) %>%
  stepAIC(trace = FALSE)

#check the summary of the binary model
summary(glm.fit)

#lets check the coefficients
coef(glm.fit)

#lets plot some residuals
glm.residuals <- glm.fit$residuals #assign glm.residuals from model fit

#lets check the residuals
summary(glm.residuals)

#visual of residuals 
plot(glm.residuals)
