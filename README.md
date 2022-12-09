# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/109913335/206606141-80715a7e-7973-4016-b10c-d43e892fe93d.png)

 - The only variables that provided a non-random amount of variance to the mpg values was ground_clearance with a Pr(>ltl) value of 0.033. The Pr(>ltl) values of all the other variables were not significant.

 - The slope of the linear model is not able to be determined due to this being a multiple linear regression.

 - This linear model does not predict the mpg of MechCar prototypes due to a P value of 0.1991, well over the allowed 5% variance. This means we are not able to reject our null hypothesis. Additionally, the R squared value was 0.1223 meaning only around 12% of the variance can be explained by the regression.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When we evaluate the total summary the variance is within the allowed variance of 100 pounds per square inch.

total_summary

![image](https://user-images.githubusercontent.com/109913335/206617334-ce9a1843-0133-4fa3-a127-110139cbde9f.png)

However, when we dive down into the data per Lot, we see that Lot 3 does not meet the allowed variance.

lot_summary

![image](https://user-images.githubusercontent.com/109913335/206617372-e01e5017-32e2-493d-83ae-58df973753ff.png)
