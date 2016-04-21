### Codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 



Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMag, TimeGravityAccelerationMag, TimeBodyAccelerationJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 



Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcceleration-XYZ, FrequencyBodyAccelerationJerk-XYZ, FrequencyBodyGyro-XYZ, FrequencyBodyAccelerationJerkMag, FrequencyBodyGyroMag, FrequencyBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



These signals were used to estimate variables of the feature vector for each pattern:  



‘-X’, ‘-Y’, ‘-Z’ is used to denote 3-axial signals in the X, Y and Z directions.

TimeBodyAccelerationMean()-X

TimeBodyAccelerationMean()-Y

TimeBodyAccelerationMean()-Z

TimeBodyAccelerationSTD()-X

TimeBodyAccelerationSTD()-Y

TimeBodyAccelerationSTD()-Z

TimeGravityAccelerationMean()-X

TimeGravityAccelerationMean()-Y

TimeGravityAccelerationMean()-Z

TimeGravityAccelerationSTD()-X

TimeGravityAccelerationSTD()-Y

TimeGravityAccelerationSTD()-Z

TimeBodyAccelerationJerkMean()-X

TimeBodyAccelerationJerkMean()-Y

TimeBodyAccelerationJerkMean()-Z

TimeBodyAccelerationJerkSTD()-X

TimeBodyAccelerationJerkSTD()-Y

TimeBodyAccelerationJerkSTD()-Z

TimeBodyGyroscopeMean()-X

TimeBodyGyroscopeMean()-Y

TimeBodyGyroscopeMean()-Z

TimeBodyGyroscopeSTD()-X

TimeBodyGyroscopeSTD()-Y

TimeBodyGyroscopeSTD()-Z

TimeBodyGyroscopeJerkMean()-X

TimeBodyGyroscopeJerkMean()-Y

TimeBodyGyroscopeJerkMean()-Z

TimeBodyGyroscopeJerkSTD()-X

TimeBodyGyroscopeJerkSTD()-Y

TimeBodyGyroscopeJerkSTD()-Z

TimeBodyAccelerationMagnitudeMean()

TimeBodyAccelerationMagnitudeSTD()

TimeGravityAccelerationMagnitudeMean()

TimeGravityAccelerationMagnitudeSTD()

TimeBodyAccelerationJerkMagnitudeMean()

TimeBodyAccelerationJerkMagnitudeSTD()

TimeBodyGyroscopeMagnitudeMean()

TimeBodyGyroscopeMagnitudeSTD()

TimeBodyGyroscopeJerkMagnitudeMean()

TimeBodyGyroscopeJerkMagnitudeSTD()

FrequencyBodyAccelerationMean()-X

FrequencyBodyAccelerationMean()-Y

FrequencyBodyAccelerationMean()-Z

FrequencyBodyAccelerationSTD()-X

FrequencyBodyAccelerationSTD()-Y

FrequencyBodyAccelerationSTD()-Z

FrequencyBodyAccelerationMeanFreq()-X

FrequencyBodyAccelerationMeanFreq()-Y

FrequencyBodyAccelerationMeanFreq()-Z

FrequencyBodyAccelerationJerkMean()-X

FrequencyBodyAccelerationJerkMean()-Y

FrequencyBodyAccelerationJerkMean()-Z

FrequencyBodyAccelerationJerkSTD()-X

FrequencyBodyAccelerationJerkSTD()-Y

FrequencyBodyAccelerationJerkSTD()-Z

FrequencyBodyAccelerationJerkMeanFreq()-X

FrequencyBodyAccelerationJerkMeanFreq()-Y

FrequencyBodyAccelerationJerkMeanFreq()-Z

FrequencyBodyGyroscopeMean()-X

FrequencyBodyGyroscopeMean()-Y

FrequencyBodyGyroscopeMean()-Z

FrequencyBodyGyroscopeSTD()-X

FrequencyBodyGyroscopeSTD()-Y

FrequencyBodyGyroscopeSTD()-Z

FrequencyBodyGyroscopeMeanFreq()-X

FrequencyBodyGyroscopeMeanFreq()-Y

FrequencyBodyGyroscopeMeanFreq()-Z

FrequencyBodyAccelerationMagnitudeMean()

FrequencyBodyAccelerationMagnitudeSTD()

FrequencyBodyAccelerationMagnitudeMeanFreq()

FrequencyBodyBodyAccelerationJerkMagnitudeMean()

FrequencyBodyBodyAccelerationJerkMagnitudeSTD()

FrequencyBodyBodyAccelerationJerkMagnitudeMeanFreq()

FrequencyBodyBodyGyroscopeMagnitudeMean()

FrequencyBodyBodyGyroscopeMagnitudeSTD()

FrequencyBodyBodyGyroscopeMagnitudeMeanFreq()

FrequencyBodyBodyGyroscopeJerkMagnitudeMean()

FrequencyBodyBodyGyroscopeJerkMagnitudeSTD()

FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq()

Angle(TimeBodyAccelerationMean,Gravity)

Angle(TimeBodyAccelerationJerkMean),GravityMean)

Angle(TimeBodyGyroscopeMean,GravityMean)

Angle(TimeBodyGyroscopeJerkMean,GravityMean)

Angle(X,GravityMean)

Angle(Y,GravityMean)

Angle(Z,GravityMean)



The set of variables that were estimated from these signals are: 



Mean(): Mean value

STD(): Standard deviation






