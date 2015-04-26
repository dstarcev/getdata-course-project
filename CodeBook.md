# Human Activity Recognition Using Smartphones Dataset*
######*Coursera "Getting and Cleaning Data" edition

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timetAccelerometerXYZ and timeGyroscopeXYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometerXYZ and timeGravityAccelerometerXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerkXYZ and timeBodyGyroscopeJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometerXYZ, frequencyBodyAcceletometerJerkXYZ, frequencyBodyGyroscopeXYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**Only mean and standard deviation values for each feature are provided**

## Variables
1. **subject**<br>
**factor** Subject who performed the activity
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
**factor** Performed activity
<br>
Possible values:
  * Walking
  * Walking Upstairs
  * Walking Downstairs
  * Sitting
  * Standing
  * Laying
3. **timeBodyAccelerometerMeanX**<br>
**numeric** Mean of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
4. **timeBodyAccelerometerMeanY**<br>
**numeric** Mean of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
5. **timeBodyAccelerometerMeanZ**<br>
**numeric** Mean of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
6. **timeBodyAccelerometerStdX**<br>
**numeric** Standard deviation of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
7. **timeBodyAccelerometerStdY**<br>
**numeric** Standard deviation of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
8. **timeBodyAccelerometerStdZ**<br>
**numeric** Standard deviation of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
9. **timeGravityAccelerometerMeanX**<br>
**numeric** Mean of X axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
10. **timeGravityAccelerometerMeanY**<br>
**numeric** Mean of Y axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
11. **timeGravityAccelerometerMeanZ**<br>
**numeric** Mean of Z axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
12. **timeGravityAccelerometerStdX**<br>
**numeric** Standard deviation of X axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
13. **timeGravityAccelerometerStdY**<br>
**numeric** Standard deviation of Y axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
14. **timeGravityAccelerometerStdZ**<br>
**numeric** Standard deviation of Z axis of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
15. **timeBodyAccelerometerJerkMeanX**<br>
**numeric** Mean of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
16. **timeBodyAccelerometerJerkMeanY**<br>
**numeric** Mean of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
17. **timeBodyAccelerometerJerkMeanZ**<br>
**numeric** Mean of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
18. **timeBodyAccelerometerJerkStdX**<br>
**numeric** Standard deviation of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
19. **timeBodyAccelerometerJerkStdY**<br>
**numeric** Standard deviation of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
20. **timeBodyAccelerometerJerkStdZ**<br>
**numeric** Standard deviation of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
21. **timeBodyGyroscopeMeanX**<br>
**numeric** Mean of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
22. **timeBodyGyroscopeMeanY**<br>
**numeric** Mean of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
23. **timeBodyGyroscopeMeanZ**<br>
**numeric** Mean of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
24. **timeBodyGyroscopeStdX**<br>
**numeric** Standard deviation of X axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
25. **timeBodyGyroscopeStdY**<br>
**numeric** Standard deviation of Y axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
26. **timeBodyGyroscopeStdZ**<br>
**numeric** Standard deviation of Z axis of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
27. **timeBodyGyroscopeJerkMeanX**<br>
**numeric** Mean of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
28. **timeBodyGyroscopeJerkMeanY**<br>
**numeric** Mean of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
29. **timeBodyGyroscopeJerkMeanZ**<br>
**numeric** Mean of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
30. **timeBodyGyroscopeJerkStdX**<br>
**numeric** Standard deviation of X axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
31. **timeBodyGyroscopeJerkStdY**<br>
**numeric** Standard deviation of Y axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
32. **timeBodyGyroscopeJerkStdZ**<br>
**numeric** Standard deviation of Z axis of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
33. **timeBodyAccelerometerMagnitudeMean**<br>
**numeric** Mean of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
34. **timeBodyAccelerometerMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
35. **timeGravityAccelerometerMagnitudeMean**<br>
**numeric** Mean of magnitude of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
36. **timeGravityAccelerometerMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of gravity acceleration time domain signal, captured at a constant 50Hz rate measured by accelerometer
37. **timeBodyAccelerometerJerkMagnitudeMean**<br>
**numeric** Mean of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
38. **timeBodyAccelerometerJerkMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by accelerometer
39. **timeBodyGyroscopeMagnitudeMean**<br>
**numeric** Mean of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
40. **timeBodyGyroscopeMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body acceleration time domain signal, captured at a constant 50Hz rate measured by gyroscope
41. **timeBodyGyroscopeJerkMagnitudeMean**<br>
**numeric** Mean of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
42. **timeBodyGyroscopeJerkMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body Jerk time domain signal, captured at a constant 50Hz rate measured by gyroscope
43. **frequencyBodyAccelerometerMeanX**<br>
**numeric** Mean of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
44. **frequencyBodyAccelerometerMeanY**<br>
**numeric** Mean of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
45. **frequencyBodyAccelerometerMeanZ**<br>
**numeric** Mean of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
46. **frequencyBodyAccelerometerStdX**<br>
**numeric** Standard deviation of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
47. **frequencyBodyAccelerometerStdY**<br>
**numeric** Standard deviation of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
48. **frequencyBodyAccelerometerStdZ**<br>
**numeric** Standard deviation of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
49. **frequencyBodyAccelerometerJerkMeanX**<br>
**numeric** Mean of X axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
50. **frequencyBodyAccelerometerJerkMeanY**<br>
**numeric** Mean of Y axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
51. **frequencyBodyAccelerometerJerkMeanZ**<br>
**numeric** Mean of Z axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
52. **frequencyBodyAccelerometerJerkStdX**<br>
**numeric** Standard deviation of X axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
53. **frequencyBodyAccelerometerJerkStdY**<br>
**numeric** Standard deviation of Y axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
54. **frequencyBodyAccelerometerJerkStdZ**<br>
**numeric** Standard deviation of Z axis of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
55. **frequencyBodyGyroscopeMeanX**<br>
**numeric** Mean of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
56. **frequencyBodyGyroscopeMeanY**<br>
**numeric** Mean of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
57. **frequencyBodyGyroscopeMeanZ**<br>
**numeric** Mean of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
58. **frequencyBodyGyroscopeStdX**<br>
**numeric** Standard deviation of X axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
59. **frequencyBodyGyroscopeStdY**<br>
**numeric** Standard deviation of Y axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
60. **frequencyBodyGyroscopeStdZ**<br>
**numeric** Standard deviation of Z axis of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
61. **frequencyBodyAccelerometerMagnitudeMean**<br>
**numeric** Mean of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
62. **frequencyBodyAccelerometerMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
63. **frequencyBodyAccelerometerJerkMagnitudeMean**<br>
**numeric** Mean of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
64. **frequencyBodyAccelerometerJerkMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by accelerometer
65. **frequencyBodyGyroscopeMagnitudeMean**<br>
**numeric** Mean of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
66. **frequencyBodyGyroscopeMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body acceleration frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
67. **frequencyBodyGyroscopeJerkMagnitudeMean**<br>
**numeric** Mean of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
68. **frequencyBodyGyroscopeJerkMagnitudeStd**<br>
**numeric** Standard deviation of magnitude of body Jerk frequency domain signal, produced by Fast Fourier Transform measured by gyroscope
