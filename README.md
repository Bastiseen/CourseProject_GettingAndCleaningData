# Project of the "Getting And Cleaning Data" course by coursera

getdata-projectfiles-UCI HAR Dataset was donwloaded and unzipped in the working directory.

## The R sript - run_analysis.R

run_analysis.R:
* 1) - Merges the training and the test sets to create one data set.
* 2) - Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3) - Uses descriptive activity names to name the activities in the data set.
* 4) - Appropriately labels the data set with descriptive variable names. 
* 5) - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Details of the sript are described therein

## Code book

The clean daset describes the average of each variable for each activity and each subject.

There are 30 subjects: 1 to 30.

There are 6 activities for each subject: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The list of variables is ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag
* fBodyAcc-mean()-XYZ               
* fBodyAcc-std()-XYZ               
* fBodyAcc-meanFreq()-XYZ 
* fBodyAccJerk-mean()-XYZ      
* fBodyAccJerk-std()-XYZ 
* fBodyAccJerk-meanFreq()-XYZ   
* fBodyGyro-mean()-XYZ
* fBodyGyro-std()-XYZ           
* fBodyGyro-meanFreq()-XYZ
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
* fBodyBodyGyroJerkMag-meanFreq()