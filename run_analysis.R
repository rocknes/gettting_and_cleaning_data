#############################################
#Getting and Cleaning Data - Course Project	#
#											#
#Author : Aritra Sen						#
#Date : 25th May, 2014						#
#											#
#############################################

#Read raw data
xTrain <- read.table(file = ".\\train\\X_train.txt")
subTrain <- read.table(file = ".\\train\\subject_train.txt")
yTrain <- read.table(file = ".\\train\\y_train.txt")
xTest <- read.table(file = ".\\test\\X_test.txt")
subTest <- read.table(file = ".\\test\\subject_test.txt")
yTest <- read.table(file = ".\\test\\y_test.txt")

#Slap train and test data together
x <- rbind(xTrain, xTest)
subjects <- rbind(subTrain, subTest)
y <- rbind(yTrain, yTest)

#Identify the relevant columns
c1 <- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,84,86,121,122,123,124,125,126,161,162,163,164,165,166)
c2 <- c(201,202,214,215,227,228,240,241,253,254)
c3 <- c(266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429)
c4 <- c(503,504,516,517,529,530,542,543)
cols <- c(c1,c2,c3,c4)

#Extract relevant columns
x <- x[,cols]

#Rename activity numbers with descriptive names
activities <- read.table(file = ".\\activity_labels.txt")
activities <- as.character(activities[,2])
y <- activities[as.numeric(y[,1])]

#Rename features as proper names
features <- read.table(file = ".\\features.txt")
features <- as.character(features[,2])
colnames(x) <- features[cols]

#Create a second independent tidy data set grouped by subject# and activity
temp <- cbind(subjects, y , x)
colnames(temp)[1] <- c("Subject")
colnames(temp)[2] <- c("Activity")
s <- split(temp, temp[,1:2])
tidyData <- sapply(s, function(x) colMeans(temp[3:68]))

#Rotate the data frame
tidyData <- t(tidyData)

#Write tidy data in file
write.csv(tidyData, file="output.csv")