# Linear regression:
# Idea----
# We have two numeric variables;
# 1) Speed of a car and 2) Distance taken to stop.
# The assumption is the faster the car goes the longer it takes to stop.
# There is a postive relationship, but we have to test and show that it is real.
# on the x axis we have the independent variable (speed of car)
# on the y axis we have the dependent variable (time taken to stop the car)
# We are suggesting that the change in the x variable there will be a change in the y variable.
# Value of y is depends on the value of x.

library(tidyverse)
ggplot(cars, aes(speed, dist))+
  geom_point()+
  geom_smooth(method = 'lm', se = F)+
  labs(y='Distance taken to stop (meter)', x= 'Speed of car(km/h)')


# Explanation----
# model is the line 
# Slope----
# is the slope real? or what is the relationship between x and y?
# for every 1 unit across the x axis you move 000 units upon the y axis
# 2----
# how much of the variation in the distance taken to stop in y or how much of up and down
# can be explained by the change in the speed of the car?
# 3----
# we can predict what value of y we would expect for a given value in x in other words,
# how much distance its going to take the car stop given a particular speed of the car?
# p value----
# if the slope wasn't real, the null hypothesis there is no slope in the data 
# what is the probability that we would happened by change to find the slope that we found after running the model.
# and if that probability is extremely small then we can assume that the in actual fact there is no slope incorrect.
# and we can accept the fact that the slope that we are seeing is real or statistical significant.
# when you do a hypothesis test we have a threshold or an alpha value 
# R2 (R squired) is the proportion (between 0 and 1) in the variation of values in the y axis can be
# explained by the change in the x axis, if we times it can be percentage. 
# 00% of the variation in y can be explained change in the x


# lm= linear model
# dist is the dependent variable
# speed is the independent variable
# ~ stands for  the function of 



data() 
head(cars, 4)
cars %>% 
  lm(dist ~ speed, data= .) %>% 
  summary()

# other way

mod <- lm(dist ~ speed, data= cars)
mod
summary(mod)

# Residuals: is the distance between the observation or the points from the model (or the line)
# Coefficients: 
# 1. Estimate- (Intercept) is the y intercept is  not valid in this case but we have to have one for model
# 2. Speed is here is the slope 3.9324 (for every 1 unit across the x axis you move 3.9324 units upon the y axis)

# p value: this is the p-value for our slope and remember that's where we were saying the 
# null hypothesis is that the slope is zero. 
# We seeing a slope of 3.9 the 
# probability of getting a slope of 3.9 it were the 
# case that in actual fact at a population level the slope was zero the probability 
# would be extremely small one point four nine times ten to the power of negative 
# twelve in actual that number is smaller than our alpha our 
# threshold which is not point zero five or you could you could have any alpha 
# there's reasons for having different alphas and so we reject the null
# hypothesis that the slope is zero and we accept that this is statistically significant.

# R-squared: 0.65 or (65 % of the change in y can explained by change in x) 
