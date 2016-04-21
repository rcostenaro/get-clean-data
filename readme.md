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

mean: *Mean*

standard deviation: *Std*

```R
mean_and_std <- grep(".*Mean.*|.*Std.*", names(data), ignore.case=TRUE)
required_columns <- c(mean_and_std, 562, 563)
extracted_data <- data[,required_columns]
```

###### 3. Uses descriptive activity names to name the activities in the data set

`extracted_data$Activity` is a numeric field, representing an activity code

The corresponding name to each code is in the file *activity_labels.txt*

```R
activity_labels <- read.table("activity_labels.txt", header = FALSE)
```

Replace each activity code (1st column of the file *activity_labels.txt*) by its corresponding name (2nd column of same file)
Need to convert column type from numeric to char

```R
extracted_data$Activity <- as.character(extracted_data$Activity)
for (i in 1:6){ extracted_data$Activity[extracted_data$Activity == i] <- as.character(activity_labels[i,2]) }
```

###### 4. Appropriately labels the data set with descriptive variable names.

```R
names(extracted_data) <- gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data) <- gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data) <- gsub("Mag", "Magnitude", names(extracted_data)) # replace only when name starts with a ‘t’
names(extracted_data) <- gsub("angle", "Angle", names(extracted_data))
names(extracted_data) <- gsub("gravity", "Gravity", names(extracted_data))
names(extracted_data) <- gsub("tBody", "TimeBody", names(extracted_data))
names(extracted_data) <- gsub("-mean()", "Mean", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-std()", "STD", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-freq()", "Frequency", names(extracted_data), ignore.case = TRUE)
```

###### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

```R
tidy <- aggregate(. ~Subject + Activity, extracted_data, FUN=mean)
```

```R
write.table(tidy, file = "tidy.txt", row.names = FALSE)

```
