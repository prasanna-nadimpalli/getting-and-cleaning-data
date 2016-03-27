Codebook for wearable computing dataset
==================================

## Variables
````
subject                    1..2
    Subject number
                           1..30 .Unique identifier assigned to each subject

label                      6..18
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

tBodyAccMeanX              12
    Described below

tBodyAccMeanY              12
    Described below

tBodyAccMeanZ              12
    Described below

tBodyAccStdX               12
    Described below

tBodyAccStdY               12
    Described below

tBodyAccStdZ               12
    Described below

tGravityAccMeanX           12
    Described below

tGravityAccMeanY           12
    Described below

tGravityAccMeanZ           12
    Described below

tGravityAccStdX           12
    Described below

tGravityAccStdY            12
    Described below

tGravityAccStdZ            12
    Described below

tBodyAccJerkMeanX          12
    Described below

tBodyAccJerkMeanY          12
    Described below

tBodyAccJerkMeanZ          12
    Described below

tBodyAccJerkStdX           12
    Described below

tBodyAccJerkStdY           12
    Described below

tBodyAccJerkStdZ           12
    Described below

tBodyGyroMeanX             12
    Described below

tBodyGyroMeanY             12
    Described below

tBodyGyroMeanZ             12
    Described below

tBodyGyroStdX              12
    Described below

tBodyGyroStdY              12
    Described below

tBodyGyroStdZ              12
    Described below

tBodyGyroJerkMeanX         12
    Described below

tBodyGyroJerkMeanY         12
    Described below

tBodyGyroJerkMeanZ         12
    Described below

tBodyGyroJerkStdX          12
    Described below

tBodyGyroJerkStdY          12
    Described below

tBodyGyroJerkStdZ          12
    Described below

tBodyAccMagMean            12
    Described below

tBodyAccMagStd             12
    Described below

tGravityAccMagMean         12
    Described below

tGravityAccMagStd          12
    Described below

tBodyAccJerkMagMean        12
    Described below

tBodyAccJerkMagStd         12
    Described below

tBodyGyroMagMean           12
    Described below

tBodyGyroMagStd            12
    Described below

tBodyGyroJerkMagMean       12
    Described below

tBodyGyroJerkMagStd        12
    Described below

fBodyAccMeanX              12
    Described below

fBodyAccMeanY              12
    Described below

fBodyAccMeanZ              12
    Described below

fBodyAccStdX               12
    Described below

fBodyAccStdY               12
    Described below

fBodyAccStdZ               12
    Described below

fBodyAccJerkMeanX          12
    Described below

fBodyAccJerkMeanY          12
    Described below

fBodyAccJerkMeanZ          12
    Described below

fBodyAccJerkStdX           12
    Described below

fBodyAccJerkStdY           12
    Described below

fBodyAccJerkStdZ           12
    Described below

fBodyGyroMeanX             12
    Described below

fBodyGyroMeanY             12
    Described below

fBodyGyroMeanZ             12
    Described below

fBodyGyroStdX              12
    Described below

fBodyGyroStdY              12
    Described below

fBodyGyroStdZ              12
    Described below

fBodyAccMagMean            12
    Described below

fBodyAccMagStd             12
    Described below

fBodyBodyAccJerkMagMean    12
    Described below

fBodyBodyAccJerkMagStd     12
    Described below

fBodyBodyGyroMagMean       12
    Described below

fBodyBodyGyroMagStd        12
    Described below

fBodyBodyGyroJerkMagMean   12
    Described below

fBodyBodyGyroJerkMagStd    12
    Described below

````

## Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value

std: Standard deviation

## Transformation

All the values are means, aggregated over 30 subjects and 6 activities, hence the resulting dataset is 180 rows by 66 columns.
