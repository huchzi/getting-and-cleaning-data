library(dplyr)

##### Download and unzip raw data and read tables

# please comment the following lines, if you do not want to download the raw data automatically
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "getdata_projectfiles_UCI HAR Dataset.zip")
# unzip("getdata_projectfiles_UCI HAR Dataset.zip")

features <- read.table("UCI HAR Dataset/features.txt", quote="\"", comment.char="")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")

##### Create data frames for the train and test datasets; this merges subject data, activity data and the other variables into one frame
# create dataframe "train"
names(X_train) <- as.character(features[, 2]) # this labels the dataset with descriptive variable names
train <- data.frame(subject = subject_train[, 1], activity = y_train[, 1], X_train)
train <- tbl_df(train)

# create dataframe "test"
names(X_test) <- as.character(features[, 2]) # this labels the dataset with descriptive variable names
test <- data.frame(subject = subject_test[, 1], activity = y_test[, 1], X_test)
test <- tbl_df(test)

##### Create the first data set
# merge the training and the test sets, extract only the measurements on the mean and standard deviation, use descriptive activity names
data_set <- 
  bind_rows(train, test) %>%
  select(subject, activity, contains("mean"), contains("std")) %>%
  mutate(activity = activity_labels[activity, 2])

##### Create the sceond data set and write it to a txt-file
data_set_2 <- 
  group_by(data_set, activity, subject) %>%
  summarise_each(funs(mean))

write.table(file = "result.txt", data_set_2, row.names = FALSE)
