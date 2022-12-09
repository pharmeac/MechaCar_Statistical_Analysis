library(dplyr)
library(tidyverse)
# Deliverable 1
MechCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset

lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df))#generate summary statistics

# Deliverable2
susp_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset

#create total_summary table
total_summary <- susp_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# Create a lot_summary table
lot_summary <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

