##Codebook

###Files:
* output.txt:		Contain the tidy data
* run_analysis.R: 	Contain the code for analysis of the data
* README.md:			Readme file
* CodeBook.md:		This file


###Output:
* output.txt: 180 rows x 67 columns

* Column 1: Un-named column, each row contains (subject id, activity name) pair as a single string, joined with a '.'
* Column 2 through 67: Numeric fields containing Mean value (subject-activity pairwise) of the following columns extracted from the original Samsung data sheet. 

	* tBodyAcc-mean()-X
	* tBodyAcc-mean()-Y
	* tBodyAcc-mean()-Z
	* tBodyAcc-std()-X
	* tBodyAcc-std()-Y
	* tBodyAcc-std()-Z
	* tGravityAcc-mean()-X
	* tGravityAcc-mean()-Y,
	* tGravityAcc-mean()-Z
	* tGravityAcc-std()-X
	* tGravityAcc-std()-Y
	* tGravityAcc-std()-Z
	* tBodyAccJerk-mean()-X
	* tBodyAccJerk-mean()-Y
	* tBodyAccJerk-mean()-Z
	* tBodyAccJerk-std()-X
	* tBodyAccJerk-std()-X.1
	* tBodyAccJerk-std()-Z
	* tBodyGyro-mean()-X
	* tBodyGyro-mean()-Y
	* tBodyGyro-mean()-Z
	* tBodyGyro-std()-X
	* tBodyGyro-std()-Y
	* tBodyGyro-std()-Z
	* tBodyGyroJerk-mean()-X
	* tBodyGyroJerk-mean()-Y
	* tBodyGyroJerk-mean()-Z
	* tBodyGyroJerk-std()-X
	* tBodyGyroJerk-std()-Y
	* tBodyGyroJerk-std()-Z
	* tBodyAccMag-mean()
	* tBodyAccMag-std()
	* tGravityAccMag-mean()
	* tGravityAccMag-std()
	* tBodyAccJerkMag-mean()
	* tBodyAccJerkMag-std()
	* tBodyGyroMag-mean()
	* tBodyGyroMag-std()
	* tBodyGyroJerkMag-mean()
	* tBodyGyroJerkMag-std()
	* fBodyAcc-mean()-X
	* fBodyAcc-mean()-Y
	* fBodyAcc-mean()-Z
	* fBodyAcc-std()-X
	* fBodyAcc-std()-Y
	* fBodyAcc-std()-Z
	* fBodyAccJerk-mean()-X
	* fBodyAccJerk-mean()-Y
	* fBodyAccJerk-mean()-Z
	* fBodyAccJerk-std()-X
	* fBodyAccJerk-std()-Y
	* fBodyAccJerk-std()-Z
	* fBodyGyro-mean()-X
	* fBodyGyro-mean()-Y
	* fBodyGyro-mean()-Z
	* fBodyGyro-std()-X
	* fBodyGyro-std()-Y
	* fBodyGyro-std()-Z
	* fBodyAccMag-mean()
	* fBodyAccMag-std()
	* fBodyBodyAccJerkMag-mean()
	* fBodyBodyAccJerkMag-std()
	* fBodyBodyGyroMag-mean()
	* fBodyBodyGyroMag-std()
	* fBodyBodyGyroJerkMag-mean()
	* fBodyBodyGyroJerkMag-std()

##Script
* Script name: run_analysis.R
* Output - output.txt (in csv format)

  * Rows Consist of subject + activity pair
  * Columns are the features required to be reported
  * Cells contain mean value of the (subject-activity, feature) pair

* To Run the script put it inside the folder where the Samsung data is available (alongside feature.txt)
* Open R terminal
* Set the correct directory
* Run the script run_analysis.R
* Output will be generated in the same folder

### Working of the script
* Read in the raw training and test data
* Combine them row-wise
* Extract required fields out of them
* Read in the subject data file
* Read in the activity data file
* Read in the activity names - code number pairs
* Read in the feature names - code number pairs
* Replace activity code numbers with proper names
* Replace feature code numbers with proper names
* Split the data using the (subject number, activity) pair
* Apply Column mean function on the columns of the split data frame
* Report the data in a tidy form
