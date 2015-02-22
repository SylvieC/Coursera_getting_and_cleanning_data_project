CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The data for the project came from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Variables
=========

subject
-------
 
* Integer from 1 to 30 representing each of the 30 volunteers in the experiment

activity
--------
* The activity being performed by the subject, taken out of the six following activities: 
  * walking
  * walking_upstairs
  * walking_downstairs
  * sitting
  * standing
  * laying
* character


Other variables
--------------
The rest of the variables are measuremens that are normalized. They are the average value for the corresponding activity for the subject

 

| Name of the variable  |   Suffix  added    | Represents the mean of |
|-----------------------|:-------------:|:-------------------:|
|tGravityAcc_mean| _X _Y or _Z       | time domain gravity acceleration in direction X,Y or X (according to suffix added)
| tBody AccJerk_mean|_X _Y or _Z  | time domain body acceleration jerk in direction X,Y or X (according to suffix added)|
|tBodyGyro_mean|_X _Y or _Z  | time domain body gyroscope mean in direction X,Y or X (according to suffix added)|
|tBodyGyroJerk_mean | _X _Y or _Z  | time domain body gyroscope jerk in n direction X,Y or X (according to suffix added)|
|fBodyAcc_mean| _X _Y or _Z  | frequency domain body acceleration mean in direction X,Y or X (according to suffix added)|
|fBodyAcc_meanFreq| _X _Y or _Z  | frequency domain body acceleration mean fequency in direction X,Y or X (according to suffix added)|
|fBodyAccJerk_mean| _X _Y or _Z  | frequency domain body acceleration jerk mean in direction X,Y or X (according to suffix added)|
|fBodyAccJerk_meanFreq| _X _Y or _Z | frequency domain body acceleration jerk mean in direction X,Y or X (according to suffix added)|
|fBodyGyro_mean| _X _Y or _Z | frequency domain body gyroscope mean in direction X,Y or X (according to suffix added)|
|fBodyGyro_meanFreq| _X _Y or _Z   | frequency domain body gyroscope mean frequency in direction X,Y or X (according to suffix added)|
| tBodyAcc_mean          |           | time domain body acceleration mean|
|tBodyAccMag_mean|                     | time domain body acceleration magnitude mean|
|tGravityAccMag_mean       |            | time domain gravity acceleration magnitude mean |           
|tBodyAccJerkMag_mean|                   | time domain body acceleration jerk magnitude mean|
|tBodyGyroMag_mean  |            |         time domain body gyroscope magnitude mean|
|tBodyGyroJerkMag_mean |            | time domain body gyroscope jerk magnitude mean|
|fBodyAccMag_mean |            |  frequency domain body acceleration magnitude mean|
|fBodyAccMag_meanFreq  |            | frequency domain body acceleration frequency magnitude mean|
|fBodyBodyAccJerkMag_mean|            | frequency domain body acceleration jerk magnitude mean|
|fBodyBodyAccJerkMag_meanFreq |            | frequency domain body acceleration mean frequency|
|fBodyBodyGyroMag_mean |            | frequency domain body gyroscope magnitude frequency mean|
|fBodyBodyGyroJerkMag_mean|            | frequency domain body gyroscope magnitude frequency  mean|
|angletBodyAccMean_gravity |            | body angular speed gravity acceleration mean|
|angletBodyAccJerkMean_gravityMean |            | body angular acceleration jerk magnitude mean|
|angletBodyGyroMean_gravityMean|            | body angular body gyroscope gravity mean|
|angletBodyGyroJerkMean_gravityMean |            | body angular gyroscope jerk magnitude mean|
|angleX_gravityMean |            | body angular gravity mean in X direction|
|angleY_gravityMean |            | body angular gravity mean in Y direction|
|angleZ_gravityMean |            | body angular gravity mean in Z direction| 