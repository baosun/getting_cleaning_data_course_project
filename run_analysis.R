

## step 1. Merges the training and the test sets to create one data set.
## Step 1.1 to generate full training set
setwd("D:/R/data/data/UCI/HAR")
trainX <- read.table("train/X_train.txt") 
features <- read.table("features.txt")
colnames(trainX) <- features[,2]
subject_train <- read.table("train/subject_train.txt", col.names = "subject")
trainY <- read.table("train/y_train.txt", col.names = "activity")
train <- cbind(trainX, trainY, subject_train)

## Step 2.2 to generate full testing set
testX <- read.table("test/X_test.txt")
colnames(testX) <- features[,2]
subject_test <- read.table("test/subject_test.txt", col.names = "subject")
testY <- read.table("test/y_test.txt", col.names = "activity")
test <- cbind(testX, testY, subject_test)

## Step 2.3 merge train and test dataset
fullData <- rbind(train, test)

## step 2. Extracts only the measurements on the mean and standard deviation for 
##         each measurement. 
library(dplyr)
noDuplicate <- fullData[,!duplicated(colnames(fullData))]
new <- select(noDuplicate, grep("mean|std|activity|subject", colnames(noDuplicate)))
new <- select(new, -contains("meanFreq"))

## step 3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("activity_labels.txt")
new$activity <- factor(new$activity, labels = activity[,2])

## step 4. Appropriately labels the data set with descriptive variable names. 
colnames(new) <- gsub("\\()", "", colnames(new))

## step 5. From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.
cleanData <- new %>% group_by(subject, activity) %>%
                summarize_each(funs(mean))
cleanData$subject <- factor(cleanData$subject)
write.table(cleanData,file = "tidyData.txt",
            row.name = FALSE)                                 

