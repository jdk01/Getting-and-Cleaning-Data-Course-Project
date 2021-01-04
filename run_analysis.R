#0. load packages
library(reshape2)
library(tidyverse)

#1. download and unzip file from the link
##1a. declare variables
downdir <- "./download"
downurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
downfilename <- "data.zip"
downdest <- paste(downdir,"/",downfilename,sep="")
datadir <- "./data"

##1b. check file then download file
if(!file.exists(downdir)) {
        dir.create(downdir)
        download.file(url = downurl, destfile = downdest)
}

##1c. unzip the file to "data" folder
if(!file.exists(datadir)) {
        dir.create(datadir)
        unzip(downdest,exdir = datadir)
}

#2. merge train and test datasets
##2a. declare variables for folders
datafolder <- list.files(datadir)[1]
trainfolder <- paste(datadir,"/",datafolder,"/","train",sep="")
testfolder <- paste(datadir,"/",datafolder,"/","test",sep="")

##2b. read table for train datasets
x_train <- read.table(paste(trainfolder,"/","X_train.txt",sep=""))
y_train <- read.table(paste(trainfolder,"/","y_train.txt",sep=""))
s_train <- read.table(paste(trainfolder,"/","subject_train.txt",sep=""))

##2c. read table for test datasets
x_test <- read.table(paste(testfolder,"/","X_test.txt",sep=""))
y_test <- read.table(paste(testfolder,"/","y_test.txt",sep=""))
s_test <- read.table(paste(testfolder,"/","subject_test.txt",sep=""))

##2d. merge train and test datasets (step 1)
x_data <- rbind(x_train,x_test)
y_data <- rbind(y_train,y_test)
s_data <- rbind(s_train,s_test)

#3. create a dataset of measurements and their respective labels
##3a. load features and activity labels
features <- read.table(paste(datadir,"/",datafolder,"/","features.txt",sep=""))
activity <- read.table(paste(datadir,"/",datafolder,"/","activity_labels.txt",sep=""))

##3b. extract only mean and std from features, then change to descriptive variable names
outputno <- grep("-(std|mean)\\(\\).*",features[,2]) #step 2
outputcols <- features[outputno,2]
outputcols <- gsub("\\(\\)","",outputcols) #step 4
outputcols <- gsub("^f","freq",outputcols)
outputcols <- gsub("^t","time",outputcols)

##3c. filter columns to correspond to outputcols
names(x_data) <- sub("V","",names(x_data))
x_data <- x_data[,outputno]

##3d. create a new dataset to combine above variables
dataset <- cbind(s_data,y_data,x_data)
colnames(dataset) <- c("Subject","Activity",outputcols)
dataset$Activity <- factor(dataset$Activity,levels=activity[,1],labels=activity[,2])
dataset$Subject <- as.factor(dataset$Subject)


#4. create tidy dataset (step 5)
meltdataset <- melt(dataset,id=c("Subject","Activity"))
tidydataset <- dcast(meltdataset,Subject + Activity ~ variable, mean)
write.table(tidydataset, "./tidy_data.txt", row.names = FALSE, quote = FALSE) 




