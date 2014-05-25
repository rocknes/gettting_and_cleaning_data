## ReadMe File for the Course Project of the course "Getting and Cleaning Data"

* Script - run_analysis.R
* Output - output.txt (in csv format)

  * Rows Consist of subject + activity pair
  * Columns are the features required to be reported
  * Cells contain mean value of the (subject-activity, feature) pair

* To Run the script put it inside the folder where the Samsung data is available (alongside feature.txt")
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
