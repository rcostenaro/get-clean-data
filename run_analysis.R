# 0. Set Working directory

setwd("./UCI HAR Dataset")


# 1. Merges the training and the test sets to create one data set.

# rbind = merge (bind) the columns keeping the same number of rows
# cbind = merge (bind) the rows, keeping the same number of columns

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# merge rows (train + test)

x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# column names (features) are on the file ‘features.txt’, column ‘V2’
# COLUMN ‘V2’ in file ‘features.txt’ becomes the header ROW in X dataset

features = read.table('features.txt')
colnames(x) <- features$V2
colnames(y) <- "Activity"
colnames(subject) <- "Subject"

# merge columns (features (x) + activities (y) + subject)
data <- cbind(x, y, subject)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# mean = “Mean”
# standard deviation = “Std”

mean_and_std <- grep(".*Mean.*|.*Std.*", names(data), ignore.case=TRUE)
required_columns <- c(mean_and_std, 562, 563)
extracted_data <- data[,required_columns]



# 3. Uses descriptive activity names to name the activities in the data set

# extracted_data$Activity is a numeric field, representing and activity code
# the corresponding name to each code is in the file activity_labels.txt

activity_labels <- read.table("activity_labels.txt", header = FALSE)

# replace each activity code (1st column of the file ‘activity_labels.txt’) by its corresponding name (2nd column from the same file) - need to convert column type from numeric to char

extracted_data$Activity <- as.character(extracted_data$Activity)
for (i in 1:6){ extracted_data$Activity[extracted_data$Activity == i] <- as.character(activity_labels[i,2]) }



# 4. Appropriately labels the data set with descriptive variable names. 

# used the command names(extracted_data) to see the current names
# name tips are on the file ‘features_info.txt’
# Acc = Accelerometer
# Gyro = Gyroscope
# Mag = Magnitude (calculated using the Euclidean Norm)
# f = Frequency (frequency domain, calculated using a Fast Fourier Transform)
# t = Time (time domain, before transformation to frequency domain)
# ‘-std()’ = Standard Deviation = STD (desvio padrão)
# ‘-mean()’ = Mean (media)
# Other labels (min, max…) are not necessary, because it has been already removed (step 2), remaining only mean and STD.

names(extracted_data) <- gsub("Acc", "Accelerometer", names(extracted_data))
names(extracted_data) <- gsub("Gyro", "Gyroscope", names(extracted_data))
names(extracted_data) <- gsub("Mag", "Magnitude", names(extracted_data)) # replace only when name starts with a ‘t’
names(extracted_data) <- gsub("angle", "Angle", names(extracted_data))
names(extracted_data) <- gsub("gravity", "Gravity", names(extracted_data))
names(extracted_data) <- gsub("tBody", "TimeBody", names(extracted_data))
names(extracted_data) <- gsub("-mean()", "Mean", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-std()", "STD", names(extracted_data), ignore.case = TRUE)
names(extracted_data) <- gsub("-freq()", "Frequency", names(extracted_data), ignore.case = TRUE)


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# average = mean
tidy <- aggregate(. ~Subject + Activity, extracted_data, FUN=mean)

# used row.name=FALSE as in instructions
write.table(tidy, file = "tidy.txt", row.names = FALSE)