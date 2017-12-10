# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the above data set in step 4, create a second, independent tidy data set with the average of-
# each variable for each activity and each subject.

# Load dplyr
library(dplyr)

# Set Working Directory
# setwd("~/Data Science/Module 3 - Getting and Cleaning Data/Wk4")

# Read train data:
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Read test data:
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read feature vector:
features <- read.table('./UCI HAR Dataset/features.txt')

# Read activity labels:
activityLabels = read.table('./UCI HAR Dataset/activity_labels.txt')

# 1. Merges the training and the test sets to create one data set.
X_total <- rbind(x_train, x_test)
Y_total <- rbind(y_train, y_test)
Sub_total <- rbind(subject_train, subject_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
selected_feature <- features[grep("mean\\(\\)|std\\(\\)", features[,2]),]
X_total <- X_total[,selected_feature[,1]]

# 3. Uses descriptive activity names to name the activities in the data set
colnames(Y_total) <- "activity"
Y_total$activitylabel <- factor(Y_total$activity, labels = as.character(activityLabels[,2]))
activitylabel <- Y_total[,-1]

# 4. Appropriately labels the data set with descriptive variable names.
colnames(X_total) <- features[selected_feature[,1],2]

# 5. From the above data set in step 4, create a second, independent tidy data set with the average of-
# each variable for each activity and each subject.
colnames(Sub_total) <- "subject"
Total <- cbind(X_total, activitylabel, Sub_total)
Total_Mean <- Total %>% group_by(subject, activitylabel) %>% summarize_all(funs(mean))
write.table(Total_Mean, file = "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
