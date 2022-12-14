library(dplyr)
library(tidyverse)
# Deliverable 1
MechCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_mpg_df))#generate summary statistics

# Deliverable2
susp_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset

#create total_summary table
total_summary <- susp_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# Create a lot_summary table
lot_summary <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500
t.test(susp_table$PSI,mu=1500)

#Lot1 data
Lot_1 <- subset(susp_table, Manufacturing_Lot=='Lot1', select=(PSI))

#t.test on Lot 1
t.test(Lot_1$PSI,mu=1500)

#Lot2 data
Lot_2 <- subset(susp_table, Manufacturing_Lot =="Lot2", select=(PSI))

#t.test on Lot 2
t.test(Lot_2$PSI,mu=1500)

#Lot3 data
Lot_3 <- subset(susp_table, Manufacturing_Lot=='Lot3', select=(PSI))

#t.test on Lot3
t.test(Lot_3$PSI,mu=1500)


