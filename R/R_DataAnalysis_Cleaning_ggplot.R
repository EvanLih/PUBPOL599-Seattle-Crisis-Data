

#This file is for reading the dataset into R. 
#each of these calls these packages and installs them. We may need them to export more stuff in the future. 
library(haven)
library(ggplot2)
library(scales)
library(dplyr)
library(Rcurl)
dataset <- 'https://github.com/EvanLih/PUBPOL599_Right_To_Work/raw/master/Dataset/Cleaned_RTW_Dataset.csv'

x <- read.csv(dataset)



