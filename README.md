# Getting and Cleaning Data: Peer-reviewed Assignment
This repository is created as a part of the peer-reviewed assignment in the course "Getting and cleaning data."

# Dataset for the project
The dataset for this project is obtained from the Coursera assignment instructions. The data is collected from the experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years, each of whom performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The dataset consists of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz recorede using embedded accelerometer and gyroscope in the Samsung Galaxy S smartphone. For further information, please follow the website:

[https://urldefense.com/v3/__http://archive.ics.uci.edu/ml/datasets/Human*Activity*Recognition*Using*Smartphones__;KysrKw!!Ls64Rlj6!jnPvLQ3MHiWeRrvAgraJanrngAkY_s0dZZWTZKR0Hn2mKHG-o5HiSLuNlmDq1LeahdZxtXAM$ ]

The data for this project is obtained from the following weblink:

[https://urldefense.com/v3/__https://d396qusza40orc.cloudfront.net/getdata*2Fprojectfiles*2FUCI*20HAR*20Dataset.zip__;JSUlJQ!!Ls64Rlj6!jnPvLQ3MHiWeRrvAgraJanrngAkY_s0dZZWTZKR0Hn2mKHG-o5HiSLuNlmDq1LeahfPMGdPk$ ]

# R script
The R script "run_analysis.R" is provided which requires "dplyr" library to run. The R code executes the following assigned tasks (as mentioned in the course project):

Reads data files, and merges the training and the test sets to create one data set.
Extracts the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Final tidy data set
The R script "run_analysis.R" generates OutputTidyData.txt as the final tidy data set.


