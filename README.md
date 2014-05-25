# What is this?

The `run_analysis.R` program is intended to analyze some data of Human Activity Recognition captured by Smartphones Dataset.  The data is provided through this url:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This program is just for educational purpose and please read through the License statement in the README.txt file in the zip file.


# How to run?
1. Download the data zip file from the provided url.
2. Put the downloaded file into the same directory of the program.
3. Enter the `R` CLI (command line interface)
4. Set the working directory to current folder containing the data and program
5. Execute command `source("run_analysis.R")`


# Tested under what environment?
* OS: OSX v10.9.2
* R: version 3.0.3 (2014-03-06)


# What are the analysis steps?

1. Merge the training and testing data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Rename the measurement column to be a more descriptive name.
4. Create a dataset with the average of each measurement per each activity and each subject.

## What measurements are picked for analysis?

Based on the `features_info.txt` file in the archive file, below measurements are picked for analysis in the program.

* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency

And also below averaging vectors used on the `angle()`:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

## What do those measurements mean and how are they captured?

Based on the `features_info.txt` file in the archive file.
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## How to rename the measurement to be more descriptive.

Style guide I takes is the Google one:
https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml

A mapping is built as below:
* `f` -> `Fast.Fourier.Transformed`
* `t` -> `Time.domain`
* `Acc` -> `linear.acceleration`
* `BodyBody` -> `Body`
* `Mag` -> `Euclidean.norm.Magnitude`
* `Gyro` -> `Gyroscope`
* `std` -> `Standard.deviation`
* `meanFreq` -> `Mean.frequency`
* `X` -> `in.X.axis`
* `Y` -> `in.Y.axis`
* `Z` -> `in.Z.axis`

For example:

* `tBodyAcc-mean()-X` -> `Time.domain.Body.linear.acceleration.Mean.X.axis`
* `angle(tBodyAccMean,gravity)` -> `Angle.of.Time.domain.Body.linear.acceleration.Mean.and.Gravity`

# What is the output?

One tidy dataset is generated in the same directory of the program after executing the 4 analysis steps.

* `average_per_subject_and_activity.txt`
