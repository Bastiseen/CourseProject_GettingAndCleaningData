library(tidyr)
library(dplyr)

## read text files common to training and test sets
read.table("UCI HAR Dataset/features.txt") -> features
read.table("UCI HAR Dataset/activity_labels.txt") -> activity_labels

## Give/change names of columns
names(activity_labels) <- c("id.activity","activity") 
names(features) <- c("id.feature","feature")

## read text files of the test set directory
read.table("UCI HAR Dataset/test/subject_test.txt") -> subject_test
read.table("UCI HAR Dataset/test/X_test.txt") -> X_test
read.table("UCI HAR Dataset/test/y_test.txt") -> y_test

## read text files of the train set directory
read.table("UCI HAR Dataset/train/subject_train.txt") -> subject_train
read.table("UCI HAR Dataset/train/X_train.txt") -> X_train
read.table("UCI HAR Dataset/train/y_train.txt") -> y_train

## Give name to columns
names(X_test) <- features[,2]
names(X_train) <- features[,2]
names(y_test) <- "id.activity"
names(y_train) <- "id.activity"
names(subject_test) <- "subject"
names(subject_train) <- "subject"
names(y_test) <- "id.activity"
names(y_train) <- "id.activity"
names(subject_test) <- "subject"
names(subject_train) <- "subject"

## Bind test and training data
dataset.test <- cbind(subject_test,y_test, X_test)
dataset.train <- cbind(subject_train, y_train, X_train)

dataset <- rbind(dataset.train, dataset.test)

## Merge by activity_labels and dataset by id.activity
dataset <- merge.data.frame(activity_labels, dataset, by="id.activity")

## Remove id.activity column
dataset <- dataset[,2:564]

## Extracts the measurements on the mean and standard deviation for each measurement while keeping the order of the original dataset 
mean <- grep("mean",names(dataset))
std <- grep("std",names(dataset))
dataset <- dataset[,c(1,2,c(mean,std)[order(c(mean,std))])]

## create factors and split the dataset by these factors
dataset[,2] <- as.factor(dataset[,2])
f <- list(dataset[,1], dataset[,2])
split <- split(dataset, f)

##sapply on the dataset to calculate the means
dataset <- sapply (split, function(x) {colMeans(x[,3:81])})

## transpose the result of sapply
dataset <- t(dataset)
## append row names to dataset
dataset <- cbind (rownames(dataset), dataset)

## transforam dataset into data frame
dataset <- as.data.frame(dataset)

## split v1 of datset into two columns: "activity" and "subject"
dataset <- separate(dataset, V1, c("activity", "subject"), "\\.")

## create a txt file
write.table(dataset, "dataset.txt", row.name=FALSE)