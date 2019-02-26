
library(haven)
library(ggplot2)
library(scales)
library(dplyr)
library(Rcurl)
dataset1 <- read.csv("/Users/evanlih/Github/PUBPOL599-Seattle-Crisis-Data/Evan_Lih/Cleaned_RTW_Dataset.csv")

dataset <- ('https://raw.githubusercontent.com/EvanLih/PUBPOL599_Right_To_Work/master/Evan_Lih/Cleaned_RTW_Dataset.csv')

x <- read.csv(dataset, header = TRUE)
