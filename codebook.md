## CodeBook ##

### Data Background ###

The experiment is carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The original data is in un-tidy format and this analysis performed

Attribute Information:

For each record in the dataset it is provided:

Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.
The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.

_Notes:_
Features are normalized and bounded within [-1,1].
Each feature vector is a row on the text file.


### Variables in the Set ###

The data in the final dataset are processed by obtaining the Mean and Average values for the 30 subjects, for 6 measurements.

The data set is comma delimited with header.

Data rows include 6 measurement rows for each of the 30 Subjects.

There are 73 columns of sensor data in the file created as columns with references to Mean or Std were extracted from the 561 columns in the original raw data form.

The 75 columns are as follows:
1. Activity (one of these 6 descriptions: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

2. Subject (a number 1-30, for each of the 30 Subjects)

3. Column 3 through 75 are these measurements, in this order:


* Time.domain.Body.linear.acceleration.Mean.in.X.axis
* Time.domain.Body.linear.acceleration.Mean.in.Y.axis
* Time.domain.Body.linear.acceleration.Mean.in.Z.axis
* Time.domain.Body.linear.acceleration.Standard.deviation.in.X.axis
* Time.domain.Body.linear.acceleration.Standard.deviation.in.Y.axis
* Time.domain.Body.linear.acceleration.Standard.deviation.in.Z.axis
* Time.domain.Gravity.linear.acceleration.Mean.in.X.axis
* Time.domain.Gravity.linear.acceleration.Mean.in.Y.axis
* Time.domain.Gravity.linear.acceleration.Mean.in.Z.axis
* Time.domain.Gravity.linear.acceleration.Standard.deviation.in.X.axis
* Time.domain.Gravity.linear.acceleration.Standard.deviation.in.Y.axis
* Time.domain.Gravity.linear.acceleration.Standard.deviation.in.Z.axis
* Time.domain.Body.linear.acceleration.Jerk.Mean.in.X.axis
* Time.domain.Body.linear.acceleration.Jerk.Mean.in.Y.axis
* Time.domain.Body.linear.acceleration.Jerk.Mean.in.Z.axis
* Time.domain.Body.linear.acceleration.Jerk.Standard.deviation.in.X.axis
* Time.domain.Body.linear.acceleration.Jerk.Standard.deviation.in.Y.axis
* Time.domain.Body.linear.acceleration.Jerk.Standard.deviation.in.Z.axis
* Time.domain.Body.Gyroscope.Mean.in.X.axis
* Time.domain.Body.Gyroscope.Mean.in.Y.axis
* Time.domain.Body.Gyroscope.Mean.in.Z.axis
* Time.domain.Body.Gyroscope.Standard.deviation.in.X.axis
* Time.domain.Body.Gyroscope.Standard.deviation.in.Y.axis
* Time.domain.Body.Gyroscope.Standard.deviation.in.Z.axis
* Time.domain.Body.Gyroscope.Jerk.Mean.in.X.axis
* Time.domain.Body.Gyroscope.Jerk.Mean.in.Y.axis
* Time.domain.Body.Gyroscope.Jerk.Mean.in.Z.axis
* Time.domain.Body.Gyroscope.Jerk.Standard.deviation.in.X.axis
* Time.domain.Body.Gyroscope.Jerk.Standard.deviation.in.Y.axis
* Time.domain.Body.Gyroscope.Jerk.Standard.deviation.in.Z.axis
* Time.domain.Body.linear.acceleration.Euclidean.norm.Magnitude.Mean
* Time.domain.Body.linear.acceleration.Euclidean.norm.Magnitude.Standard.deviation
* Time.domain.Gravity.linear.acceleration.Euclidean.norm.Magnitude.Mean
* Time.domain.Gravity.linear.acceleration.Euclidean.norm.Magnitude.Standard.deviation
* Time.domain.Body.linear.acceleration.Jerk.Euclidean.norm.Magnitude.Mean
* Time.domain.Body.linear.acceleration.Jerk.Euclidean.norm.Magnitude.Standard.deviation
* Time.domain.Body.Gyroscope.Euclidean.norm.Magnitude.Mean
* Time.domain.Body.Gyroscope.Euclidean.norm.Magnitude.Standard.deviation
* Time.domain.Body.Gyroscope.Jerk.Euclidean.norm.Magnitude.Mean
* Time.domain.Body.Gyroscope.Jerk.Euclidean.norm.Magnitude.Standard.deviation
* Fast.Fourier.Transformed.Body.linear.acceleration.Mean.in.X.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Mean.in.Y.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Mean.in.Z.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Standard.deviation.in.X.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Standard.deviation.in.Y.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Standard.deviation.in.Z.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Mean.in.X.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Mean.in.Y.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Mean.in.Z.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Standard.deviation.in.X.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Standard.deviation.in.Y.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Standard.deviation.in.Z.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Mean.in.X.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Mean.in.Y.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Mean.in.Z.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Standard.deviation.in.X.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Standard.deviation.in.Y.axis
* Fast.Fourier.Transformed.Body.Gyroscope.Standard.deviation.in.Z.axis
* Fast.Fourier.Transformed.Body.linear.acceleration.Euclidean.norm.Magnitude.Mean
* Fast.Fourier.Transformed.Body.linear.acceleration.Euclidean.norm.Magnitude.Standard.deviation
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Euclidean.norm.Magnitude.Mean
* Fast.Fourier.Transformed.Body.linear.acceleration.Jerk.Euclidean.norm.Magnitude.Standard.deviation
* Fast.Fourier.Transformed.Body.Gyroscope.Euclidean.norm.Magnitude.Mean
* Fast.Fourier.Transformed.Body.Gyroscope.Euclidean.norm.Magnitude.Standard.deviation
* Fast.Fourier.Transformed.Body.Gyroscope.Jerk.Euclidean.norm.Magnitude.Mean
* Fast.Fourier.Transformed.Body.Gyroscope.Jerk.Euclidean.norm.Magnitude.Standard.deviation
* Angle.of.Time.domain.Body.linear.acceleration.Mean.and.Gravity
* Angle.of.Time.domain.Body.linear.acceleration.Jerk.Mean.and.Gravity.Mean
* Angle.of.Time.domain.Body.Gyroscope.Mean.and.Gravity.Mean
* Angle.of.Time.domain.Body.Gyroscope.Jerk.Mean.and.Gravity.Mean
* Angle.of.in.X.axis.and.Gravity.Mean
* Angle.of.in.Y.axis.and.Gravity.Mean
* Angle.of.in.Z.axis.and.Gravity.Mean


Column names for columns 3-75 follow this convention:

* `Time.domain` means the signal is Time domain signals
* `Fast.Fourier.Transformed` means the signal is Frequency domain signals after Fast Fourier Transformations
* `Body` means signals from the body
* `Gravity` means signals from gravity
* `Gyroscope` means signals from the gyroscope
* `linear.acceleration` means signals from the accelerometer
* `Euclidean.norm.Magnitude` is the magnitude of the signal calculated using the Euclidean norm
* `Jerk` means jerk signals
* `Mean` is the average
* `Standard.deviation` is standard deviation
* `in.X.axis` means the signal is in the x-axis
* `in.Y.axis` means the signal is in the y-axis
* `in.Z.axis` means the signal is in the z-axis
* `Angle.of` means averaging the signals
