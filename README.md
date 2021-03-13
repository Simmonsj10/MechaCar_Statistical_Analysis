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
We will design a study that quantifies how the MechaCar performs against a competiitor car (ElektraCar). In order to quantify the performance, we will run a series of tests to collect enough datapoints on one MechaCar type (40 data points for each metric). We will run the same number of tests one competitor, ElektraCar, type.

We will compare the car performance on 
1. City fuel efficiency - Across 40 MechaCar & ElektraCar vehicles what is the fuel efficiency for each?
2. Highway fuel efficiency - Across 40 MechaCar & ElektraCar vehicles what is the fuel efficiency for each?
3. Horse power - Across 40 MechaCar & ElektraCar vehicles what is the actual Horse Power for each?
4. Weight - 40 weight measurements on each car type
5. Time to reach 60 mph (acceleration) - 40 acceleration tests on each car type.

Upon collecting the data, we will run a T-Test in order to determine, which is the better car across each metric. The T-Test will compare the average performance across each metric and provide us the statistical confidence (95%) to compare the differences between the two car types. The null hypothesis would state that there is no statistical difference between the cars on the particular metric i.e. City Fuel Efficiency. The alternative hypothesis would state that there is a statistical difference between the mean of each car. With the outcome of this test, we could evaluate what car is better on the particular metric. A T-Test would be appropriate for this type of test, because we would have Dichotomous data type (MechaCar A v ElektraCar B) across multiple continous data types. Each metric would require it's own T-Test.


