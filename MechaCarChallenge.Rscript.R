library(dplyr)
library(tidyverse)

#Deliverable 1
MechaCar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# head(MechaCar_df)
#summary(lm(mpg ~ vehicle_length, MechaCar_df)) #linear model on vehicle_length
#summary(lm(mpg ~ vehicle_weight, MechaCar_df)) #linear model on all vehicle_weight
#summary(lm(mpg ~ spoiler_angle, MechaCar_df)) #linear model on spoiler_angle
#summary(lm(mpg ~ ground_clearance, MechaCar_df)) #linear model on ground_clearance
#summary(lm(mpg ~ AWD, MechaCar_df)) #linear model on AWD
summary(lm(mpg ~ ., data = MechaCar_df)) #linear model on all factors


#Deliverable 2
SuspensionCoil_df <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
# head(SuspensionCoil_df)
total_summary <-summarize(SuspensionCoil_df, Mean_PSI = mean(SuspensionCoil_df$PSI), Median_PSI = median(SuspensionCoil_df$PSI), Variance_PSI = var(SuspensionCoil_df$PSI), Std_PSI = sd(SuspensionCoil_df$PSI))
lot_summary <- SuspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI = var(PSI), Std_PSI = sd(PSI))

total_summary #Print Total Summary
lot_summary #Print Lot Summary


#Deliverable 3
L1 = SuspensionCoil_df %>% filter(Manufacturing_Lot=="Lot1") #Create Lot 1
L2 = SuspensionCoil_df %>% filter(Manufacturing_Lot=="Lot2") #Create Lot 2
L3 = SuspensionCoil_df %>% filter(Manufacturing_Lot=="Lot3") #Create Lot 3
Total_population = SuspensionCoil_df$PSI

Lot1_Test = t.test(Total_population, L1$PSI) #Run t.test of population mean v Lot 1
Lot2_Test = t.test(Total_population, L2$PSI) #Run t.test of population mean v Lot 2
Lot3_Test = t.test(Total_population, L3$PSI) #Run t.test of population mean v Lot 3

Lot1_Test #Print T.Test on Lot 1
Lot2_Test #Print T.Test on Lot 2
Lot3_Test #Print T.Test on Lot 3



