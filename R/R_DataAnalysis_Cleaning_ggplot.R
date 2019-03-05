

#This file is for reading the dataset into R. 
#each of these calls these packages and installs them. We may need them to export more stuff in the future. 
install.packages("pacman")
library("pacman")
pacman::p_load("haven", "ggplot2", "scales", 
               "dplyr", "Rcurl", "magrittr")

dataset <- 'https://github.com/EvanLih/PUBPOL599_Right_To_Work/raw/master/Dataset/Cleaned_RTW_Dataset.csv'
dataset <- read.csv(dataset, stringsAsFactors = F)

#converting the Right_to_Work column into as a factor, as it is currently being read as a integer. 
dataset$Right_to_Work %<>% as.factor

means <- aggregate(incwage ~ Right_to_Work, dataset, mean)
means$incwage %<>% round(2)

ggplot(dataset, aes(Right_to_Work, incwage), group = Right_to_Work) +
  geom_boxplot(outlier.color = "red", outlier.shape = 1) +
  scale_y_continuous(breaks = c(10000,30000,50000,70000,100000,500000,10000000), labels = dollar) +
  labs(x = "Right to Work", y = "Income (dollars)") +
  geom_text(data=means, aes(label = incwage, y = incwage + .09)) +
  scale_x_discrete(breaks= c(0,1), labels = c("No Right to Work", "Right to Work"))
  

  

var.test(incwage ~ Right_to_Work, data = dataset)

x <- read.csv(dataset)

t.test(incwage~Right_to_Work, data = dataset)

test = glm(Right_to_Work ~ incwage, data = dataset, family = binomial())

