library(dplyr)
library(tidyverse)
MechCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df))#generate summary statistics