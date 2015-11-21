# Codebook

This codebook describe the variables, the data and the transformations performed to get this dataset from the raw data.

## Data

The raw dataset was download from the following url on 11/14/2015:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A detailed description of the original dataset can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following paragraph is cited from this url and describes the essence of the dataset:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."

## Transformations

The tables of the original dataset have been merged and only variables concerning mean and std were kept for fruther analysis. The activity variable was converted to a factor with meaningful labels. Finally, all measurements were averaged for each subject and activity.

The skript that can reproduce the transformations is called run_analysis.R and can be found in this repo. The function of the skript is explained in README.md.

## Variables

- activity:               the activity peformed while measurements were made
- subject                 the number of the subject

The mean values of all variables for the X, Y and Z-axis respectively:
- time domain body acceleration signals
+ tBodyAcc.mean...X
+ tBodyAcc.mean...Y
+ tBodyAcc.mean...Z
- time domain gravity accerleration signals
+ tGravityAcc.mean...X
+ tGravityAcc.mean...Y
+ tGravityAcc.mean...Z
- time domain body acceleration jerk signals
+ tBodyAccJerk.mean...X
+ tBodyAccJerk.mean...Y
+ tBodyAccJerk.mean...Z
- time domain body angular velocity signals
+ tBodyGyro.mean...X
+ tBodyGyro.mean...Y
+ tBodyGyro.mean...Z
- time domain body angular velocity jerk signals
+ tBodyGyroJerk.mean...X
+ tBodyGyroJerk.mean...Y
+ tBodyGyroJerk.mean...Z
- magnitude of these three dimensional signals
+ tBodyAccMag.mean..
+ tGravityAccMag.mean..
+ tBodyAccJerkMag.mean..
+ tBodyGyroMag.mean..
+ tBodyGyroJerkMag.mean..
- frequency domain body acceleration signals
+ fBodyAcc.mean...X
+ fBodyAcc.mean...Y
+ fBodyAcc.mean...Z
- frequency domain body acceleration signals: weighted average of the frequency components to obtain a mean frequency
+ fBodyAcc.meanFreq...X
+ fBodyAcc.meanFreq...Y
+ fBodyAcc.meanFreq...Z
- frequency domain body acceleration jerk signals
+ fBodyAccJerk.mean...X
+ fBodyAccJerk.mean...Y
+ fBodyAccJerk.mean...Z
- frequency domain body acceleration jerk signals: weighted average of the frequency components to obtain a mean frequency
+ fBodyAccJerk.meanFreq...X
+ fBodyAccJerk.meanFreq...Y
+ fBodyAccJerk.meanFreq...Z
- frequency domain body angular velocity signals
+ fBodyGyro.mean...X
+ fBodyGyro.mean...Y
+ fBodyGyro.mean...Z
- frequency domain body angular velocity signals: weighted average of the frequency components to obtain a mean frequency
+ fBodyGyro.meanFreq...X
+ fBodyGyro.meanFreq...Y
+ fBodyGyro.meanFreq...Z
- magnitude of these three dimensional signals
+ fBodyAccMag.mean..
+ fBodyAccMag.meanFreq..
+ fBodyBodyAccJerkMag.mean..
+ fBodyBodyAccJerkMag.meanFreq..
+ fBodyBodyGyroMag.mean..
+ fBodyBodyGyroMag.meanFreq..
+ fBodyBodyGyroJerkMag.mean..
+ fBodyBodyGyroJerkMag.meanFreq..
- angles between two vectors named above
+ angle.tBodyAccMean.gravity.
+ angle.tBodyAccJerkMean..gravityMean.
+ angle.tBodyGyroMean.gravityMean.
+ angle.tBodyGyroJerkMean.gravityMean.
+ angle.X.gravityMean.
+ angle.Y.gravityMean.
+ angle.Z.gravityMean.
The standard deviation of all variables for the X, Y and Z-axis respectively: names similar to mean values
- tBodyAcc.std...X
- tBodyAcc.std...Y
- tBodyAcc.std...Z
- tGravityAcc.std...X
- tGravityAcc.std...Y
- tGravityAcc.std...Z
- tBodyAccJerk.std...X
- tBodyAccJerk.std...Y
- tBodyAccJerk.std...Z
- tBodyGyro.std...X
- tBodyGyro.std...Y
- tBodyGyro.std...Z
- tBodyGyroJerk.std...X
- tBodyGyroJerk.std...Y
- tBodyGyroJerk.std...Z
- tBodyAccMag.std..
- tGravityAccMag.std..
- tBodyAccJerkMag.std..
- tBodyGyroMag.std..
- tBodyGyroJerkMag.std..
- fBodyAcc.std...X
- fBodyAcc.std...Y
- fBodyAcc.std...Z
- fBodyAccJerk.std...X
- fBodyAccJerk.std...Y
- fBodyAccJerk.std...Z
- fBodyGyro.std...X
- fBodyGyro.std...Y
- fBodyGyro.std...Z
- fBodyAccMag.std..
- fBodyBodyAccJerkMag.std..
- fBodyBodyGyroMag.std..
- fBodyBodyGyroJerkMag.std..