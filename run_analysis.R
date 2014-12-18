# ========== Get data ==========
# Download and unzip file if the files do not exist
if (!file.exists("Dataset.zip")) {
     fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
     download.file(fileURL, "Dataset.zip")
     unzip("Dataset.zip")
} else {
     if (!file.exists("UCI HAR Dataset")) {
          unzip("Dataset.zip")
     }
}


# ========== Load package ==========
require("reshape2")


# ========== Load all data ==========
# Load activity and features labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features_labels <- read.table("UCI HAR Dataset/features.txt")
# Load train data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# Load test data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


# ========== Merge data ==========
# Concatenate X, y, and subject data
train <- cbind(X_train, subject_train, y_train)
test <- cbind(X_test, subject_test, y_test)
# Concatenate train and test data
data <- rbind(train, test)


# ========== Label all data ==========
# Label data
new_features_labels <- gsub("\\(|\\)", "", (features_labels$V2))
colnames(data) <- c(new_features_labels, "subject_id", "activity_id")
# Add descriptive activity names to name the activities in the data set
data$activity_name <- activity_labels[data$activity_id,2]


# ========== Extract data ==========
# Extract only the measurements on the mean and standard deviation for each measurement
idx_extract <- grep("mean\\()|std\\()", features_labels$V2)
data <- data[, c((dim(data)[2]-2):dim(data)[2], idx_extract)]


# ========== Create new data ==========
# Independent tidy data set with the average of each variable for each activity and each subject
idMelt <- c("subject_id", "activity_name", "activity_id")
dataMelt <- melt(data, id = idMelt)
tidyData <- dcast(dataMelt, subject_id + activity_id + activity_name ~ variable, mean)


# ========== Create text files ==========
# Write the tidyData to a file
write.table(tidyData, "data_mean_subject_activity.txt", row.names = FALSE)
