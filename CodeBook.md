# Human Activity Recognition Using Smartphones Dataset*
######*Coursera "Getting and Cleaning Data" edition

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timetAccelerometerXYZ and timeGyroscopeXYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometerXYZ and timeGravityAccelerometerXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerkXYZ and timeBodyGyroscopeJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometerXYZ, frequencyBodyAcceletometerJerkXYZ, frequencyBodyGyroscopeXYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**Only mean and standard deviation values for each feature are provided**

## Variables
1. **subject**<br>
Subject who performed the activity
<br>
Possible values:
  * 1
  * 2
  * 3
  * 4
  * 5
  * 6
  * 7
  * 8
  * 9
  * 10
  * 11
  * 12
  * 13
  * 14
  * 15
  * 16
  * 17
  * 18
  * 19
  * 20
  * 21
  * 22
  * 23
  * 24
  * 25
  * 26
  * 27
  * 28
  * 29
  * 30
2. **activity**<br>
Performed activity
<br>
Possible values:
  * Walking
  * Walking Upstairs
  * Walking Downstairs
  * Sitting
  * Standing
  * Laying
3. **timeBodyAccelerometerMeanX**<br>
Mean of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
4. **timeBodyAccelerometerMeanY**<br>
Mean of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
5. **timeBodyAccelerometerMeanZ**<br>
Mean of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
6. **timeBodyAccelerometerStdX**<br>
Standard deviation of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
7. **timeBodyAccelerometerStdY**<br>
Standard deviation of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
8. **timeBodyAccelerometerStdZ**<br>
Standard deviation of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
9. **timeGravityAccelerometerMeanX**<br>
Mean of X axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
10. **timeGravityAccelerometerMeanY**<br>
Mean of Y axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
11. **timeGravityAccelerometerMeanZ**<br>
Mean of Z axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
12. **timeGravityAccelerometerStdX**<br>
Standard deviation of X axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
13. **timeGravityAccelerometerStdY**<br>
Standard deviation of Y axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
14. **timeGravityAccelerometerStdZ**<br>
Standard deviation of Z axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
15. **timeBodyAccelerometerJerkMeanX**<br>
Mean of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
16. **timeBodyAccelerometerJerkMeanY**<br>
Mean of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
17. **timeBodyAccelerometerJerkMeanZ**<br>
Mean of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
18. **timeBodyAccelerometerJerkStdX**<br>
Standard deviation of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
19. **timeBodyAccelerometerJerkStdY**<br>
Standard deviation of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
20. **timeBodyAccelerometerJerkStdZ**<br>
Standard deviation of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
21. **timeBodyGyroscopeMeanX**<br>
Mean of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
22. **timeBodyGyroscopeMeanY**<br>
Mean of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
23. **timeBodyGyroscopeMeanZ**<br>
Mean of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
24. **timeBodyGyroscopeStdX**<br>
Standard deviation of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
25. **timeBodyGyroscopeStdY**<br>
Standard deviation of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
26. **timeBodyGyroscopeStdZ**<br>
Standard deviation of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
27. **timeBodyGyroscopeJerkMeanX**<br>
Mean of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
28. **timeBodyGyroscopeJerkMeanY**<br>
Mean of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
29. **timeBodyGyroscopeJerkMeanZ**<br>
Mean of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
30. **timeBodyGyroscopeJerkStdX**<br>
Standard deviation of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
31. **timeBodyGyroscopeJerkStdY**<br>
Standard deviation of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
32. **timeBodyGyroscopeJerkStdZ**<br>
Standard deviation of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
33. **timeBodyAccelerometerMagnitudeMean**<br>
Mean of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
34. **timeBodyAccelerometerMagnitudeStd**<br>
Standard deviation of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
35. **timeGravityAccelerometerMagnitudeMean**<br>
Mean of magnitude of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
36. **timeGravityAccelerometerMagnitudeStd**<br>
Standard deviation of magnitude of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
37. **timeBodyAccelerometerJerkMagnitudeMean**<br>
Mean of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
38. **timeBodyAccelerometerJerkMagnitudeStd**<br>
Standard deviation of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
39. **timeBodyGyroscopeMagnitudeMean**<br>
Mean of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
40. **timeBodyGyroscopeMagnitudeStd**<br>
Standard deviation of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
41. **timeBodyGyroscopeJerkMagnitudeMean**<br>
Mean of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
42. **timeBodyGyroscopeJerkMagnitudeStd**<br>
Standard deviation of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
43. **frequencyBodyAccelerometerMeanX**<br>
Mean of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
44. **frequencyBodyAccelerometerMeanY**<br>
Mean of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
45. **frequencyBodyAccelerometerMeanZ**<br>
Mean of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
46. **frequencyBodyAccelerometerStdX**<br>
Standard deviation of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
47. **frequencyBodyAccelerometerStdY**<br>
Standard deviation of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
48. **frequencyBodyAccelerometerStdZ**<br>
Standard deviation of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
49. **frequencyBodyAccelerometerJerkMeanX**<br>
Mean of X axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
50. **frequencyBodyAccelerometerJerkMeanY**<br>
Mean of Y axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
51. **frequencyBodyAccelerometerJerkMeanZ**<br>
Mean of Z axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
52. **frequencyBodyAccelerometerJerkStdX**<br>
Standard deviation of X axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
53. **frequencyBodyAccelerometerJerkStdY**<br>
Standard deviation of Y axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
54. **frequencyBodyAccelerometerJerkStdZ**<br>
Standard deviation of Z axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
55. **frequencyBodyGyroscopeMeanX**<br>
Mean of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
56. **frequencyBodyGyroscopeMeanY**<br>
Mean of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
57. **frequencyBodyGyroscopeMeanZ**<br>
Mean of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
58. **frequencyBodyGyroscopeStdX**<br>
Standard deviation of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
59. **frequencyBodyGyroscopeStdY**<br>
Standard deviation of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
60. **frequencyBodyGyroscopeStdZ**<br>
Standard deviation of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
61. **frequencyBodyAccelerometerMagnitudeMean**<br>
Mean of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
62. **frequencyBodyAccelerometerMagnitudeStd**<br>
Standard deviation of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
63. **frequencyBodyAccelerometerJerkMagnitudeMean**<br>
Mean of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
64. **frequencyBodyAccelerometerJerkMagnitudeStd**<br>
Standard deviation of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
65. **frequencyBodyGyroscopeMagnitudeMean**<br>
Mean of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
66. **frequencyBodyGyroscopeMagnitudeStd**<br>
Standard deviation of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
67. **frequencyBodyGyroscopeJerkMagnitudeMean**<br>
Mean of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
68. **frequencyBodyGyroscopeJerkMagnitudeStd**<br>
Standard deviation of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
