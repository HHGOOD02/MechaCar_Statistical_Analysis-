# Libs
library(tidyverse)
library(dplyr)

# D1
MechaCar_mpg <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # Import to variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg) # Linear Model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =  MechaCar_mpg)) # Summary

# D2 
Coil_Data <- read.csv(file='Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # Import to variable
total_summary <- Coil_Data%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') # PSI Summary
lot_summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') # Lot Summary

# D3
t.test(Coil_Data$PSI, mu = 1500 ) # Composite vs Mean T-Test

Lot_1_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot1") # L1 Table
t.test(Lot_1_Info$PSI, mu = 1500 # L1 T-Test

Lot_2_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot2") # L2 Table
t.test(Lot_2_Info$PSI, mu = 1500) # L2 Table

Lot_3_Info <- Coil_Data %>% filter(Manufacturing_Lot == "Lot3") # L3 Table
t.test(Lot_3_Info$PSI, mu = 1500) # L3 T-Test
