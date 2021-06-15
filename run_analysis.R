library(dplyr)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile = "C:/Users/ssyy2/Downloads/R/Course3_Week4_Assignment/dataset.zip")
unzip("dataset.zip",exdir = getwd())
filelist <- list.files("UCI HAR Dataset", recursive = TRUE)

xtrain<-read.table('./UCI HAR Dataset/train/X_train.txt', header=FALSE)
ytrain<-read.table('./UCI HAR Dataset/train/y_train.txt', header=FALSE)
xtest<-read.table('./UCI HAR Dataset/test/X_test.txt', header=FALSE)
ytest<-read.table('./UCI HAR Dataset/test/y_test.txt', header=FALSE)
features<-read.table('./UCI HAR Dataset/features.txt', header=FALSE)
activity<-read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE)
subtrain<-read.table('./UCI HAR Dataset/train/subject_train.txt', header=FALSE)
subtrain <- subtrain %>% rename(subjectID=V1)
subtest<-read.table('./UCI HAR Dataset/test/subject_test.txt', header=FALSE)
subtest<-subtest%>%
  rename(subjectID=V1)

features<-features[,2]
featrasp<-t(features)
colnames(xtrain)<-featrasp
colnames(xtest)<-featrasp
colnames(activity)<-c('id','actions')

x_union <- rbind(xtrain, xtest)
y_union <- rbind(ytrain, ytest)
sub_union <- rbind(subtrain,subtest)

all_colbind <-cbind(y_union, x_union, sub_union)

data <- merge(all_colbind, activity,by.x = 'V1',by.y = 'id')

colNames <- colnames(data)
data2 <- data %>%
         select(actions, subjectID, grep("\\bmean\\b|\\bstd\\b",colNames))

data2$actions<-as.factor(data2$actions)

colnames(data2) <- gsub("^t", "time", colnames(data2))
colnames(data2) <- gsub("^f", "frequency", colnames(data2))
colnames(data2) <- gsub("Acc", "Accelerometer", colnames(data2))
colnames(data2) <- gsub("Gyro", "Gyroscope", colnames(data2))
colnames(data2) <- gsub("Mag", "Magnitude", colnames(data2))
colnames(data2) <- gsub("BodyBody", "Body", colnames(data2))

data3<-aggregate(. ~subjectID + actions, data2, mean)


write.table(data3, file = "submissiondata.txt",row.name=FALSE)
