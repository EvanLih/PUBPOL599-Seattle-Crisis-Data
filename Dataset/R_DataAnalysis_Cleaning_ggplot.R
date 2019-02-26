
library(haven)
library(ggplot2)
library(scales)
library(dplyr)
library(curl)
dataset <- read.csv("/Users/evanlih/Github/PUBPOL599-Seattle-Crisis-Data/Evan_Lih/Cleaned_RTW_Dataset")

dataset <- ('https://raw.githubusercontent.com/EvanLih/PUBPOL599_Right_To_Work/master/Evan_Lih/Cleaned_RTW_Dataset')

test <- read.csv(dataset)

test <- read.csv(text=GET('https://raw.githubusercontent.com/EvanLih/PUBPOL599_Right_To_Work/master/Evan_Lih/Cleaned_RTW_Dataset'), header = T)
