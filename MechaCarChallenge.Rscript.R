library(dplyr)
library(tidyverse)

MechaCar_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_df)
#summary(lm(mpg ~ vehicle_length, MechaCar_df)) #linear model on vehicle_length
#summary(lm(mpg ~ vehicle_weight, MechaCar_df)) #linear model on all vehicle_weight
#summary(lm(mpg ~ spoiler_angle, MechaCar_df)) #linear model on spoiler_angle
#summary(lm(mpg ~ ground_clearance, MechaCar_df)) #linear model on ground_clearance
#summary(lm(mpg ~ AWD, MechaCar_df)) #linear model on AWD
summary(lm(mpg ~ ., data = MechaCar_df)) #linear model on all factors


#cor(MechaCar_df)
#plt <- ggplot(MechaCar_df,aes(x=mpg,y=vehicle_length))
#plt + geom_point() #create a scatter plot
#cor(MechaCar_df$mpg,MechaCar_df$vehicle_length) #calculate correlation coefficient


SuspensionCoil_df <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
head(SuspensionCoil_df)
total_summary <-summarize(SuspensionCoil_df, Mean_PSI = mean(SuspensionCoil_df$PSI), Median_PSI = median(SuspensionCoil_df$PSI), Variance_PSI = var(SuspensionCoil_df$PSI), Std_PSI = sd(SuspensionCoil_df$PSI))
total_summary

lot_summary <- SuspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI = var(PSI), Std_PSI = sd(PSI))
lot_summary
