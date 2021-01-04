# Codebook

This code book codebook summarises the fields from `tidy_data.txt`

## Identifiers
* `Subject`     : ID of the subject who performed the activity for each window sample. It ranges between 1 to 30
* `Activity`    : Name of activity that is performed by the subject when measurement is taken. They are:
                        1. walking
                        2. walking_upstairs
                        3. walking_downstairs
                        4. sitting
                        5. standing
                        6. laying
                        
## Variables
The values in each variable is the average for either mean (average) or std (standard deviation) of the measurement when an activity is performed by the subject. I made some changes from the original dataset to improve clarity in the names of the variables. The first letter for each variable was either "t" or "f" and I changed them to "time" and "freq" respectively. 

"Acc" in the variables indicates that the measurement was taken by accelerometer.
"Gyro"" in the variables indicates that the measurement was taken by gyroscope.

Below are the 66 variables in the `tidy_data.txt`:

* timeBodyAcc-mean-X
* timeBodyAcc-mean-Y
* timeBodyAcc-mean-Z
* timeBodyAcc-std-X
* timeBodyAcc-std-Y
* timeBodyAcc-std-Z
* timeGravityAcc-mean-X
* timeGravityAcc-mean-Y
* timeGravityAcc-mean-Z
* timeGravityAcc-std-X
* timeGravityAcc-std-Y
* timeGravityAcc-std-Z
* timeBodyAccJerk-mean-X
* timeBodyAccJerk-mean-Y
* timeBodyAccJerk-mean-Z
* timeBodyAccJerk-std-X
* timeBodyAccJerk-std-Y
* timeBodyAccJerk-std-Z
* timeBodyGyro-mean-X
* timeBodyGyro-mean-Y
* timeBodyGyro-mean-Z
* timeBodyGyro-std-X
* timeBodyGyro-std-Y
* timeBodyGyro-std-Z
* timeBodyGyroJerk-mean-X
* timeBodyGyroJerk-mean-Y
* timeBodyGyroJerk-mean-Z
* timeBodyGyroJerk-std-X
* timeBodyGyroJerk-std-Y
* timeBodyGyroJerk-std-Z
* timeBodyAccMag-mean
* timeBodyAccMag-std
* timeGravityAccMag-mean
* timeGravityAccMag-std
* timeBodyAccJerkMag-mean
* timeBodyAccJerkMag-std
* timeBodyGyroMag-mean
* timeBodyGyroMag-std
* timeBodyGyroJerkMag-mean
* timeBodyGyroJerkMag-std
* freqBodyAcc-mean-X
* freqBodyAcc-mean-Y
* freqBodyAcc-mean-Z
* freqBodyAcc-std-X
* freqBodyAcc-std-Y
* freqBodyAcc-std-Z
* freqBodyAccJerk-mean-X
* freqBodyAccJerk-mean-Y
* freqBodyAccJerk-mean-Z
* freqBodyAccJerk-std-X
* freqBodyAccJerk-std-Y
* freqBodyAccJerk-std-Z
* freqBodyGyro-mean-X
* freqBodyGyro-mean-Y
* freqBodyGyro-mean-Z
* freqBodyGyro-std-X
* freqBodyGyro-std-Y
* freqBodyGyro-std-Z
* freqBodyAccMag-mean
* freqBodyAccMag-std
* freqBodyBodyAccJerkMag-mean
* freqBodyBodyAccJerkMag-std
* freqBodyBodyGyroMag-mean
* freqBodyBodyGyroMag-std
* freqBodyBodyGyroJerkMag-mean
* freqBodyBodyGyroJerkMag-std
