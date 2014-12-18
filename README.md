# Getting and Cleaning Data - 
## Course Project

### Introduction
This repository contains my R-script and data created for the course project of Getting and Cleaning Data.

### Objective
The main goal of this project is to use R to collect, work with, clean a data set so that the tidy data can be used for later analysis. 

### Data Description
The data provided by the following link are collected from the accelerometers from the Samsung Galaxy S smartphone:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Method
Run 'run_analysis.R'. This R script was created to:
1. Download the files from the given link and unzip the files if the data are not found.
2. Load the data listed above.
3. Merge the train and test data.
4. Label the columns for the merged data with descriptive names and use descriptive activity names to name the activities in the data set.
5. Extract only the measurements on the mean and standard deviation for each measurement.
6. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Export the tidy data set as a text file called 'data_mean_subject_activity.txt'.

The tidy data set generated from the 'run_analysis.R' is also included in this repository.

Finally, the file 'CodeBook.md' describes the variables, the data, and any transformations or work that are performed to clean up the data




