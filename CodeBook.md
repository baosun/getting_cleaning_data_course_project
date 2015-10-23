### Data Set: Human Activity Recognition Using Smartphones Data Set

#### 1) Source of the data
Codebook prepared by Susan Sun, based on data set downloaded from Coursera "Getting and Cleaning Data" course project page. 
URL of the project page: https://class.coursera.org/getdata-033/human_grading/view/courses/975117/assessments/3/submissions
Data was downloaded on Oct 21th, 2015 at 15:00.   
Original data and a full description of the experiment can be found from UCI Machine Learning repository. 
URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### 2) the original data
The original data set contains 28 .txt files. Below 10 files were used to produce the tidy data set.
- 'README.txt'
- 'activity_labels.txt': Links the class labels with their activity name.
- 'features.txt': List of all the 561 features.
- 'features_info.txt': information about the variables used on the feature vector.
- 'train/X_train.txt': Training set. 7352 observations and 561 numeric variables. No header.
- 'train/y_train.txt': 7352 observations of 1 numeric variable represents the activity performed to produce each of the observation. No header. 
- 'train/subject_train.txt': 7352 observation of 1 numeric variable. No header. Each row identifies the subject who performed the activity for each window sample. 
  Its range is from 1 to 30. 
- 'test/X_test.txt': Test set. 2947 observation of 561 numeric variables. No header.
- 'test/y_test.txt': 2947 observations of 1 numeric variable represents the activity performed to produce each of the observation. No header. 
- 'test/subject_test.txt': 2947 observation of 1 numeric varialb. No header. Each row identifies the subject who performed the activity for each window sample. 
  Its range is from 1 to 30. 

The following files are available for the train and test data. But they are out of the scope of current project. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in 
  standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_y_train.txt'
  and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the 
  total acceleration. The same description applies for the 'body_acc_y_train.txt' and 'body_cc_z_train.txt' for the Y and Z axis.
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample.
  The units are radians/second. The same description spplies for the 'body_gyro_y_train.txt' and 'body_gyro_z_text.txt'
  for the Y and Z axis.
- 'test/Inertial Signals/total_acc_x_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/total_acc_Y_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/total_acc_z_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_acc_x_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_acc_y_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_acc_z_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_gyro_x_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_gyro_y_test.txt': equivelant description as the file for train data
- 'test/Inertial Signals/body_gyro_z_test.txt': equivelant description as the file for train data

#### 3) the tidy data file
Name of the file: tidyData.txt  
The data contains 68 variables and 180 observations. Each observation represents one activity of one volunteer. Each of 30 
volunteers performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  
Below are the 68 variables.
###### A) Categorical variables
- "subject": factor variable with 30 levels, "1", "2", "3"..."30". It represents the 30 volunteer who performed the activity for each window sample.             
- "activity": factor varialbe of 6 levels. "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING".            

###### B) Numeric variables  
B1) Time domain signals (prefix 't' to denote time) captured at a constant rate of 50 Hz. Data are 3-axial raw signals from the accelerometer and gyroscope.  
- "tBodyAcc-mean-X" &  "tBodyAcc-mean-Y" & "tBodyAcc-mean-Z": mean value of body acceleration signals from X, Y, Z axis. 
- "tBodyAcc-std-X" & "tBodyAcc-std-Y" & "tBodyAcc-std-Z": standard deviation of body acceleration signals from X, Y, Z axis.     
- "tGravityAcc-mean-X" & "tGravityAcc-mean-Y" & "tGravityAcc-mean-Z": mean value of gravity acceleration signals from X, Y, Z axis.
- "tGravityAcc-std-X" & "tGravityAcc-std-Y" & "tGravityAcc-std-Z": standard deviation of gravity acceleration signals from X, Y, Z axis.
- "tBodyAccJerk-mean-X" & "tBodyAccJerk-mean-Y" & "tBodyAccJerk-mean-Z": mean value of 3-axial Jerk signals of body linear acceleration derived in time.
- "tBodyAccJerk-std-X" & "tBodyAccJerk-std-Y" & "tBodyAccJerk-std-Z": standard deviation of 3-axial Jerk signals of body linear acceleration derived in time.    
- "tBodyGyro-mean-X" & "tBodyGyro-mean-Y" & "tBodyGyro-mean-Z": mean value of body gyro acceleration signals from X, Y, Z axis.
- "tBodyGyro-std-X" & "tBodyGyro-std-Y" & "tBodyGyro-std-Y" : standard deviation of body gyro acceleration signals from X, Y, Z axis.
- "tBodyGyroJerk-mean-X" & "tBodyGyroJerk-mean-Y" & "tBodyGyroJerk-mean-Z": mean value of 3-axial Jerk signals of body angular velocity derived in time. 
- "tBodyGyroJerk-std-X" & "tBodyGyroJerk-std-Y" & "tBodyGyroJerk-std-Z": standard deviation of 3-axial Jerk signals of body angular velocity derived in time.   
- "tBodyAccMag-mean": mean value of the magnitude of the body acceleration signals, calculated using the Euclidean norm.
- "tBodyAccMag-std": standard deviation of the magnitude of the body acceleration signals, calculated using the Euclidean norm.
- "tGravityAccMag-mean": mean value of the magnitude of the gravity acceleration signals, calculated using the Euclidean norm.
- "tGravityAccMag-std": standard deviation of the magnitude of the gravity acceleration signals, calculated using the Euclidean norm.       
- "tBodyAccJerkMag-mean": mean value of the magnitude of the body acceleration jerk signals, calculated using the Euclidean norm.
- "tBodyAccJerkMag-std": standard deviation of the magnitude of the body acceleration jerk signals, calculated using the Euclidean norm.       
- "tBodyGyroMag-mean": mean value of the magnitude of the body gyro acceleration signals, calculated using the Euclidean norm.
- "tBodyGyroMag-std": standard deviation of the magnitude of the body gyro acceleration signals, calculated using the Euclidean norm.         
- "tBodyGyroJerkMag-mean": mean value of the magnitude of the body gyro acceleration jerk signals, calculated using the Euclidean norm.
- "tBodyGyroJerkMag-std": standard deviation of the magnitude of the body gyro acceleration jerk signals, calculated using the Euclidean norm.        

B2) Frequency domain signals (prefix 'f' to indicate frequency). Data was produced by applying a Fast Fourier Transform (FFT) to the signals.
- "fBodyAcc-mean-X" & "fBodyAcc-mean-Y" & "fBodyAcc-mean-Z"  
- "fBodyAcc-std-X" & "fBodyAcc-std-Y" & "fBodyAcc-std-Z"         
- "fBodyAccJerk-mean-X" & "fBodyAccJerk-mean-Y" & "fBodyAccJerk-mean-Z"      
- "fBodyAccJerk-std-X" & "fBodyAccJerk-std-Y" & "fBodyAccJerk-std-Z"  
- "fBodyGyro-mean-X"  & "fBodyGyro-mean-Y" & "fBodyGyro-mean-Z"    
- "fBodyGyro-std-X" & "fBodyGyro-std-Y" & "fBodyGyro-std-Z"         
- "fBodyAccMag-mean"
- "fBodyAccMag-std"          
- "fBodyBodyAccJerkMag-mean"
- "fBodyBodyAccJerkMag-std"  
- "fBodyBodyGyroMag-mean"
- "fBodyBodyGyroMag-std"     
- "fBodyBodyGyroJerkMag-mean"
- "fBodyBodyGyroJerkMag-std" 

#### 4) the steps from original data to tidyData.txt
1. used 'feature.txt' to add column names to both train and test data sets
2. used 'subject_train.txt' and 'subject_test.txt' to add subject to both train and test data sets. Add column name as 'subject'.
3. used 'y_train.txt' and 'y_test.txt' to add activity to to both train and test data sets. Column name is 'activity'.
4. merged the reshaped train and test data sets.
5. extracted only the measurements on the mean and standard deviation for each measurement. 
4. used 'activity_labels.txt' to change the values in activity column from integer 1-6 to descriptive values.
6. changed variable 'activity' from integer to factor.
7. removed the '()' from variable names to make the variable names more readable.
8. calculated the average of each variable for each activity and each subject.
9. changed variable 'subject' from integer to factor.
10. created an independent tidy data set named as tidyData.txt

#### 5) the variable not included in tidyData.txt
All the variables which are not mean or standard deviation of the signals are excluded. Mean frequency (meanFreq) was also excluded.


