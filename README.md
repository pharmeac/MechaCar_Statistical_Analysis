# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/109913335/207478263-6ff4ff77-c85e-4a0d-a27c-f9cdf1157818.png)

 - The variables that provided a non-random amount of variance to the mpg values were ground_clearance and vehicle length, with Pr(>ltl) values of 5.21e-08 *** and 2.60e-12 *** , respectively . The Pr(>ltl) values of all the other variables were not significant.

 - The slope of the linear model is not able to be determined due to this being a multiple linear regression.

 - This linear model does predict the mpg of MechCar prototypes, with a P value of 5.25e-11, well under the allowed 5% variance. This means we are able to reject our null hypothesis. Additionally, the R squared value was 0.7149 meaning that future data points will fit the linear model 71.5% of the time.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When we evaluate the total summary the variance is within the allowed variance of 100 pounds per square inch.

total_summary

![image](https://user-images.githubusercontent.com/109913335/206617334-ce9a1843-0133-4fa3-a127-110139cbde9f.png)

However, when we dive down into the data per Lot, we see that Lot 3 does not meet the allowed variance.

lot_summary

![image](https://user-images.githubusercontent.com/109913335/206617372-e01e5017-32e2-493d-83ae-58df973753ff.png)

## T-Tests on Suspension Coils
To determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch, a t-test was performed on the PSI values of all lots. To determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch, a t-test was performed on each Lot's PSI values. The t-test for all lots, Lot 1, and Lot 2 show a P value greater than 0.05, meaning there is not sufficient evidence to reject the null hypothesis, and the means are statistically similar. However, Lot 3 has a P value of less than 0.05 which means there is sufficient evidence to reject the null hypothesis and state that the means are statistically different.

All lots

![image](https://user-images.githubusercontent.com/109913335/206624948-ef3549ff-f808-40a3-8ccf-c5e901b39b0e.png)

Lot 1

![image](https://user-images.githubusercontent.com/109913335/206625000-c8f14774-2467-47ef-a212-c95d82279b44.png)

Lot 2

![image](https://user-images.githubusercontent.com/109913335/206625016-0aef6be3-7668-44d4-8179-1c1a683495a9.png)

Lot 3

![image](https://user-images.githubusercontent.com/109913335/206625094-122feb55-3f2a-4060-9a08-1eb7b6e62f7f.png)


## Study Design: MechaCar vs Competition
There are a multitude of factors that can be analyzed to compare MechaCar to its competitors. For this analyis, we will focus in a specific demographic, the suburban parent. Our null hypothesis is that MechaCar has similiar city fuel efficiency as its competitors for its Minivan model. We will compare MechaCar to its competitors by analyzing city fuel efficiency in a multiple linear regression.

Our statistical tests and data would look like the below for the city fuel efficiency analysis.
1. Generate multiple linear regression model
> lm(MechCar_citympg ~ Competitor1_citympg + Competitor2_citympg + Competitor3_citympg + Competitor4_citympg + Competitor5_citympg,data=datacollected) 
2. Generate summary statistics
>summary(llm(MechCar_citympg ~ Competitor1_citympg + Competitor2_citympg + Competitor3_citympg + Competitor4_citympg + Competitor5_citympg, data=datacollected) 

