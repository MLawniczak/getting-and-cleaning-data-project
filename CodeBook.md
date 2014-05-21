## Getting and Cleaning Data Course Project

###Study Design

The raw data was downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

####Information regarding the collection of the raw data (from source):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

#####Notes: 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


#####License (from source):
Use of this dataset in publications must be acknowledged by referencing the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


####Information regarding the creation of the tidy data:

Only 

the mean and standard deviation values were included in the tidy data. These values presented in this dataset are the average values for each subject and activity.

The test and training data have been merged together into a single dataset. 


###Code Book

The tidy data set contains the following variables. These are included as column
names in the first row of data.

#####Notes:
* prefix 't' denotes time domain signals
* prefix 'f' denotes frequency domain signals


1. Subject (1-30) 
2. Activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. tBodyAccelerometerMeanX
4. tBodyAccelerometerMeanY
5. tBodyAccelerometerMeanZ
6. tBodyAccelerometerStdX
7. tBodyAccelerometerStdY
8. tBodyAccelerometerStdZ
9. tGravityAccelerometerMeanX
10. tGravityAccelerometerMeanY
11. tGravityAccelerometerMeanZ
12. tGravityAccelerometerStdX
13. tGravityAccelerometerStdY
14. tGravityAccelerometerStdZ
15. tBodyAccelerometerJerkMeanX
16. tBodyAccelerometerJerkMeanY
17. tBodyAccelerometerJerkMeanZ
18. tBodyAcceleromoterJerkStdX
19. tBodyAcceleromoterJerkStdY
20. tBodyAcceleromoterJerkStdZ
21. tBodyGyroscopeMeanX
22. tBodyGyroscopeMeanY
23. tBodyGyroscopeMeanZ
24. tBodyGyroscopeStdX
25. tBodyGyroscopeStdY
26. tBodyGyroscopeStdZ
27. tBodyGyroscopeJerkMeanX
28. tBodyGyroscopeJerkMeanY
29. tBodyGyroscopeJerkMeanZ
30. tBodyGyroscopeJerkStdX
31. tBodyGyroscopeJerkStdY
32. tBodyGyroscopeJerkStdZ
33. tBodyAccelerometerMagnitudeMean
34. tBodyAccelerometerMagnitudeStd
35. tGravityAccelerometerMagnitudeMean
36. tGravityAccelerometerMagnitudeStd
37. tBodyAccelerometerJerkMagnitudeMean
38. tBodyAccelerometerJerkMagnitudeStd
39. tBodyGyroscopeMagnitudeMean
40. tBodyGyroscopeMagnitudeStd
41. tBodyGyroscopeJerkMagnitudeMean
42. tBodyGyroscopeJerkMagnitudeStd
43. fBodyAccelerometerMeanX
44. fBodyAccelerometerMeanY
45. fBodyAccelerometerMeanZ
46. fBodyAccelerometerStdX
47. fBodyAccelerometerStdY
48. fBodyAccelerometerStdZ
49. fBodyAccelerometerJerkMeanX
50. fBodyAccelerometerJerkMeanY
51. fBodyAccelerometerJerkMeanZ
52. fBodyAcceleromoterJerkStdX
53. fBodyAcceleromoterJerkStdY
54. fBodyAcceleromoterJerkStdZ
55. fBodyGyroscopeMeanX
56. fBodyGyroscopeMeanY
57. fBodyGyroscopeMeanZ
58. fBodyGyroscopeStdX
59. fBodyGyroscopeStdY
60. fBodyGyroscopeStdZ
61. fBodyAccelerometerMagnitudeMean
62. fBodyAccelerometerMagnitudeStd
63. fBodyAccelerometerJerkMagnitudeMean
64. fBodyAccelerometerJerkMagnitudeStd
65. fBodyGyroscopeMagnitudeMean
66. fBodyGyroscopeMagnitudeStd
67. fBodyGyroscopeJerkMagnitudeMean
68. fBodyGyroscopeJerkMagnitudeStd


