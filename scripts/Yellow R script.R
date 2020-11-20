

library(ggplot2)
library(dplyr)

thedata <- read.csv("data/Yellowfin.csv",header = TRUE)
print(thedata)

Immature_caught <- filter(thedata, Immature > 0)
Mature_caught <- filter(thedata, Mature > 0)


#The plot is The number of count of how many times the # is represented. For example, the number of time where 0 yellowfin were caught occured over 4,000 times.

ggplot()+
  geom_histogram(data = thedata, aes(x = Immature),fill = "blue", bins = 30 , alpha = 0.3) + 
  geom_histogram(data = thedata, aes(x = Mature),fill = "purple", bins = 30 , alpha = 0.3) +
  labs(x = "Number Caught", y = "Count")+
  facet_wrap(~Year)

#ggplot()+
#  geom_histogram(data = thedata, aes(x = Mature),fill = "purple", bins = 30 , alpha = 0.3) + 
#  labs(x = "Number Caught", y = "Count")+
#  facet_wrap(~Year)
  






