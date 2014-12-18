# CodeBook

## Data Description
The data are collected from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone (Samsung Galaxy S) with embedded inertial sensors. The data can be downloaded from this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The unzipped files can be found in the folder called 'UCI HAR Dataset'. This data set is divided into training and testing data.
* the feature values for difference observations ('train/X_train.txt', 'test/X_test.txt')
* the labels of the features ('features.txt')
* the activity labels ('train/y_train.txt' and 'test/y_test.txt')
* the descriptive names of the activity labels ('activity_labels.txt')
* the subject ids ('train/subject_train.txt', 'test/subject_test.txt')

The variables for each record (observation) in the data include:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 
More information about the data and the feature vectors can be found in 'README.txt' and 'features_info.txt' in the folder 'UCI HAR Dataset'.

## Data Transformation to Clean the Data
Below are the steps involved in transforming the raw data from different text files into a single clean data set:
1. Merge the train and test data.
2. Label the columns for the merged data with descriptive names and use descriptive activity names to name the activities in the data set.
3. Extract only the measurements on the mean and standard deviation for each measurement.
4. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
5. Export the tidy data set as a text file called 'data_mean_subject_activity.txt'.


