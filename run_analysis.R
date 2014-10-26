# This is the final project for the Getting and Cleaning Data course

# load library data.table
library(data.table)

# I stored the files in a sub-directory names humanActivityRecog
# so I set working directory
setwd("./humanActivityRecog")

# after calling dir() I begin reading in and looking at the data. I'll skip the looking at part here
# read in the activity set, second column
activity_set <- read.table("./activity_labels.txt")[,2]

# read in the features set, second column
features_set <- read.table("./features.txt")[, 2]

# get the rows with mean and and standard deviation
get_meanStd <- grepl("mean|std", features_set)

# rename the variables for clarity
features_set <- gsub("^f", "freq", features_set)
features_set <- gsub("^t", "time", features_set)
features_set <- gsub("-mean", "mean", features_set)
features_set <- gsub("-std", "std_Dev", features_set)
features_set <- gsub("Acc", "accel", features_set)
features_set <- gsub("Mag", "mag", features_set)
features_set <- gsub("Body", "body", features_set)
features_set <- gsub("body.body", "body", features_set)
features_set <- gsub("angle.t", "angle-", features_set)
features_set <- gsub("Gyro", "gyro", features_set)
features_set <- gsub("Jerk", "jerk", features_set)

# read in the test set
X_test_data <- read.table("./test/X_test.txt")
y_test_data <- read.table("./test/y_test.txt")
subject_test_data <- read.table("./test/subject_test.txt")

# read in the training set
X_train_data <- read.table("./train/X_train.txt")
y_train_data <- read.table("./train/y_train.txt")
subject_train_data <- read.table("./train/subject_train.txt")

# Rename the test and training sets
names(X_test_data) <- features_set
names(X_train_data) <- features_set

# pick the desired columns for the test set 
X_test_data <- X_test_data[, get_meanStd]

# load the activity labels into the the test set
y_test_data[,2] <- activity_set[y_test_data[,1]]
names(y_test_data) <- c("activity_number", "activity")
names(subject_test_data) <- "subject_number"

# merge the test data into a single data table
test_data_set <- cbind(as.data.table(subject_test_data), y_test_data, X_test_data)

# pick desired columns for the training set
X_train_data <- X_train_data[, get_meanStd]

# load the activity labels into the training set
y_train_data[,2] <- activity_set[y_train_data[,1]]
names(y_train_data) <- c("activity_number", "activity")
names(subject_train_data) <- "subject_number"

# merge the training data into a single data table
training_data_set <- cbind(as.data.table(subject_train_data), y_train_data, X_train_data)

# merge test and training data tables by row
testTrain_all <- rbind(test_data_set, training_data_set)

# load the reshape2 library so we can use melt and dcast
library(reshape2)

# set the experiment's identifying columns
exp_columns <- c("subject_number", "activity_number", "activity")
desired_data_columns <- setdiff(colnames(testTrain_all), exp_columns)

# melt the data so that we do not measure the experiment's identifying columns, only the others
total_data <- melt(testTrain_all, id = exp_columns, measure.vars = desired_data_columns)

# call the mean function to the desired data using dcast function
average_data <- dcast(total_data, subject_number + activity ~ variable, mean)

# per instructions write data to file using write.table and row.names=FALSE
write.table(average_data, file = "tidy_data1000.txt", row.names=FALSE)
