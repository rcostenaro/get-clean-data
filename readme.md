# Getting and Cleaning Data - Course Project


###### 1. Merges the training and the test sets to create one data set.

**rbind** = merge (bind) **columns** keeping same number of rows

**cbind** = merge (bind) **rows**, keeping same number of columns

```R
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
```

merge rows (train + test)

```R
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
```

column names (features) are on the file *features.txt*, column *V2*

**Column** *V2* in file *features.txt* becomes the *header* **row** in X dataset

```R
features = read.table('features.txt')
colnames(x) <- features$V2
colnames(y) <- "Activity"
colnames(subject) <- "Subject"
```

merge columns:
* features (x)
* activities (y)
* subject

```R
data <- cbind(x, y, subject)
```

###### 2. Extracts only the measurements on the mean and standard deviation for each measurement.

###### 3. Uses descriptive activity names to name the activities in the data set

###### 4. Appropriately labels the data set with descriptive variable names.

###### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
