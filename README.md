# MechaCar_Statistical_Analysis
Author: Jerome Simmons

## Linear Regression to Predict MPG
Using the MechaCar csv file, we developed a linear regression model to determine the impact of car attribtes on mpg. Based on the dataset, the model has determined that vehicle_length, and ground_clearance have a very high positive impact on car mpg above the 99% confidence level. Vehicle_weight was also a statistically significant factor, but only at the 90% confidence level. Other factors such as spoiler_angle and AWD did not have a statistically significant impact on mpg. The model intercept (mpg) was -1.040, and statistically significant.

##### Linear Regression Model to Predict Impact of Factors on MPG
![Images/Linear_Regression_Predict_MPG.png](Images/Linear_Regression_Predict_MPG.png)


* For every unit of vehicle length, the car mpg increases by 6.267, according to our model.
* For every unit of ground clearance, the car mpg increases by 3.546, according to our model.

The slope of the linear model is considered greater than zero, because the model has positive statistically significant factors that have predictive power. The linear model predicts mpg of MechaCar prototypes reasonably well, because the Adjusted R-squared is 0.6825 and the model has a p-value far below 0.01.

## Summary Statistics on Suspension Coils
The Suspension_Coil.csv file contains the results from multiple production lots. The dataset was created to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. We have produced summary statistics for the suspension coils across all manufacturing lots, and summary statistics by manufacturing lot in order to determine whether or not the suspension coils meet manufacturing guidelines.

##### Suspension Coil Summary Statistics
![Images/D2_Total_Summary.png](Images/D2_Total_Summary.png)
Across all manufacturing lots, we see that the mean PSI is 1498, but a variance and standard deviation of 62.29 and 7.89 respectively. The variance does not exceed 100 pounds per square inch, as such the suspension coil production line falls within our manufacturing guidelines. 

##### Suspension Coil Summary Statistics by Manufacturing Lot
![Images/D2_Lot_Summary.png](Images/D2_Lot_Summary.png)
Upon reviewing the suspenion coils across the three manufacturing lots, we have determined that Lots 1 & 2 fall within our guidelines. The variance of Lots 1 & 2 are 0.98 and 7.47 PSI, which is far below 100. Lot 3 does not meet our manufacturing guidelines and are of substandard quality as the observed variance is 170 PSI, which is beyond our acceptable threshold of 100.


## T-Tests on Suspension Coils
In addition to summary statistics, we have run T-Test models on the various manufacturing lots to determine the statistical difference between the mean of the entire batch and the mean of each lot. Based on the findings below, we have found there is no statistically significant difference between the means at the 95% confidence level.

![Images/D3_Ttest_Results.png](Images/D3_Ttest_Results.png)

## Study Design: MechaCar vs Competition
We will design a study that quantifies how the MechaCar performs against a competiitor car (ElektraCar). In order to quantify the performance, we will run a series of tests to collect enough datapoints on MechaCars (recommend at least 40 for each metrics). We will run the same number of tests on ElektraCar.

We will compare the car performance on 
1. City fuel efficiency,
2. Highway fuel efficiency, 
3. Horse power
4. Weight
5. Time to reach 60 mph (acceleration).

