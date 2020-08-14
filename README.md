# run_analysis.R
Course project for "Getting and cleanning data"

This file contains a code to merge and clean measurements of the following experiment (according to provided information):

          ==================================================================
          Human Activity Recognition Using Smartphones Dataset
          Version 1.0
          ==================================================================
          Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
          Smartlab - Non Linear Complex Systems Laboratory
          DITEN - Università degli Studi di Genova.
          Via Opera Pia 11A, I-16145, Genoa, Italy.
          activityrecognition@smartlab.ws
          www.smartlab.ws
          ==================================================================

          The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

          The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

          These signals were used to estimate variables of the feature vector for each pattern:  
          '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

          tBodyAcc-XYZ
          tGravityAcc-XYZ
          tBodyAccJerk-XYZ
          tBodyGyro-XYZ
          tBodyGyroJerk-XYZ
          tBodyAccMag
          tGravityAccMag
          tBodyAccJerkMag
          tBodyGyroMag
          tBodyGyroJerkMag
          fBodyAcc-XYZ
          fBodyAccJerk-XYZ
          fBodyGyro-XYZ
          fBodyAccMag
          fBodyAccJerkMag
          fBodyGyroMag
          fBodyGyroJerkMag

          The set of variables that were estimated from these signals are: 

          mean(): Mean value
          std(): Standard deviation
          mad(): Median absolute deviation 
          max(): Largest value in array
          min(): Smallest value in array
          sma(): Signal magnitude area
          energy(): Energy measure. Sum of the squares divided by the number of values. 
          iqr(): Interquartile range 
          entropy(): Signal entropy
          arCoeff(): Autorregresion coefficients with Burg order equal to 4
          correlation(): correlation coefficient between two signals
          maxInds(): index of the frequency component with largest magnitude
          meanFreq(): Weighted average of the frequency components to obtain a mean frequency
          skewness(): skewness of the frequency domain signal 
          kurtosis(): kurtosis of the frequency domain signal 
          bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
          angle(): Angle between to vectors.
          =====================================================================================================

The code named run_analysis:
    Starts reading and naming tables in format txt with raw data
    Reads tables with variable names given by the original researcher (that I honestly couldn´t name better)     
     1- Merges the training and the test sets to create one data set.
               First, combine test and train variables
                Then combine test and train data.frames
         1.4 I prefered to label the data set with descriptive variable names here
          2- Extracts only the measurements on the mean and standard deviation for each measurement (each measurement in x, y and z).
          3- Uses descriptive activity names to name the activities in the data set.("walking", "upstairs", "downstairs", "sitting", "standing", "laying")
          4- Appropriately labels the data set with descriptive variable names (done for everything since ##1.4)
         5 From the data set in step 4, creates a second, independent tidy data set 
         

