Getting-and-Cleaning-Data-Final-Project
=======================================

producing a tidy data set

Coursera Getting and Cleaning Data Course Project Producing a Tidy Data Set

##############################

The data and details can be found in the file: Terminology_Details_Variable_Changes which can be found in this repository or alternatively, 
here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The data come from an experiment: "Human Activity Recognition Using Smartphones Data Set"

#############################

The process: 
After setting a working directory where the files are held, we call up our files: 
""" 
[1] "activity_labels.txt" "features.txt" "features_info.txt"
[4] "README.txt" "test" "train" 
""" 

First we combine the testing and training data with labels from the features.txt which contains the variables for our data set
and the activity_labels.txt which contains the six activity labels: 
WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING 

Next we chose the variables we want - those with the "mean" or "std" (standard deviation).
	**Note - the first 10 times I went through writing this code, using different libraries - dplyr, plyr, etc, I did this step after I had combined everything, 
	but this time around it seemed easier to get rid of the excess and clean up the variables before ever combining the data 
Then the variable names in the features set are changed for clarity using gsub, a command related to grep

Next, we combine the testing and training data into a single dataframe. This is accomplished initially by rows, rbind, then ultimately - for 
combining the subject set, testing set and training set - we bind by column, cbind, using as.data.table from the data.table library.

Next we load the reshape2 library which has the handy tool melt - which can leave certain variables where they lay, and assign other variables to be stacked in 
columns, ready to be measured. Then find the mean for each activity for each subject using dcast - another handy reshape2 tool that works with melt to avoid running your desired function 
(in this case: mean) on the variables you have assigned to be left alone. 	
	**Note: the first many times I went through this code, I tried using aggregate, withholding the "subject_number" and "activity" columns from being averaged by the != and other things, 
		but it was tedious and I think less clean than melt, at least looking at the output once data was printed to a file.

Finally we use write.table per the course instructions writing to a txt file where row.names=FALSE

##############################
