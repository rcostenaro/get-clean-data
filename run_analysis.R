# 0. Set Working directory


# 1. Merges the training and the test sets to create one data set.
X_test <- read.csv("test/X_test.txt", header = FALSE, sep = " ")
y_test <- read.csv("test/y_test.txt", header = FALSE, sep = " ")

x_train <- read.csv("train/X_train.txt", header = FALSE, sep = " ")
y_train <- read.csv("train/y_train.txt", header = FALSE, sep = " ")



# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 


# 3. Uses descriptive activity names to name the activities in the data set


# 4. Appropriately labels the data set with descriptive variable names. 


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
