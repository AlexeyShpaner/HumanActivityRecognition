# CodeBook - Desription of All Variables in the Data

## Desription Variables
The Data consist from test and train sets. 
There are 561 variables from test and train sets and then i added two additional variables : subject and Activity.
Subject is indicator volunteers, there total 30 volunteers  within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) where  WALKING-1,WALKING_UPSTAIRS-2, WALKING_DOWNSTAIRS-3, SITTING-4, STANDING- 5 LAYING-6.
The other variables is Measurements. 
Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## clean up the data
In Activity variables was some problems with names, there was dublicate and illegal characters in the names. i used the function gsub to clean the names.

## Final Data
Final data includes from 69 variables, 3 of them are Subject. Activity and ActivityId and the rest are averages of mean and std function measurements.there are 180 rows.
the average is calculated by subject/activity. the dataframe icludes only mean and std function names.
on order to keep only mean and std function names i used the grepl function.


