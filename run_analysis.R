
#Step 1:
## Loading the Data sets

xTrainingDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/train/X_train.txt", sep = "", header = FALSE)
yTrainingDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/train/y_train.txt", sep = "", header = FALSE)
yTestDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/test/y_test.txt",sep = "", header = FALSE)
xTestDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/test/X_test.txt", sep = "", header = FALSE)
subjectTestDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/test/subject_test.txt", sep = "", header = FALSE)
subjectTrainDf <- read.csv("./data/assignment_week4/UCI_HAR_Dataset/train/subject_train.txt", sep = "", header = FALSE)

#Renaming the columns to variable names
Library(plyr)
subjectTestDf <- rename(subjectTestDf, c("V1" = "subjectName"))
subjectTrainDf <- rename(subjectTrainDf, c("V1" = "subjectName"))
yTrainDf <- rename(yTrainingDf, c("V1" = "ActivityName"))
yTestDf <- rename(yTestDf, c("V1" = "ActivityName"))


xTrainingDf <- rename(xTrainingDf, c(
"V1" = "tBodyAccMeanX",
"V2" = "tBodyAccMeanY",
"V3" = "tBodyAccMeanZ",
"V4" = "tBodyAccStdX",
"V5" = "tBodyAccStdY",
"V6" = "tBodyAccStdZ",
"V41" = "tGravityAccMeanX",
"V42" = "tGravityAccMeanY",
"V43" = "tGravityAccMeanZ",
"V44" = "tGravityAccStdX",
"V45" = "tGravityAccStdY",
"V46" = "tGravityAccStdZ",
"V81" = "tBodyAccJerkMeanX",
"V82" = "tBodyAccJerkMeanY",
"V83" = "tBodyAccJerkMeanZ",
"V84" = "tBodyAccJerkStdX",
"V85" = "tBodyAccJerkStdY",
"V86" = "tBodyAccJerkStdZ",

"V121" = "tBodyGyroMeanX",
"V122" = "tBodyGyroMeanY",
"V123" = "tBodyGyroMeanZ",
"V124" = "tBodyGyroStdX",
"V125" = "tBodyGyroStdY",
"V126" = "tBodyGyroStdZ",

"V161" = "tBodyGyroJerkMeanX",
"V162" = "tBodyGyroJerkMeanY",
"V163" = "tBodyGyroJerkMeanZ",
"V164" = "tBodyGyroJerkStdX",
"V165" = "tBodyGyroJerkStdY",
"V166" = "tBodyGyroJerkStdZ",

"V201" = "tBodyAccMagMean",
"V202" = "tBodyAccMagStd",

"V214" = "tGravityAccMagMean",
"V215" = "tGravityAccMagStd",

"V227" = "tBodyAccJerkMagMean",
"V228" = "tBodyAccJerkMagStd",

"V253" = "tBodyGyroJerkMagMean",
"V254" = "tBodyGyroJerkMagStd",

"V266" = "fBodyAccMeanX",
"V267" = "fBodyAccMeanY",
"V268" = "fBodyAccMeanZ",
"V269" = "fBodyAccStdX",
"V270" = "fBodyAccStdY",
"V271" = "fBodyAccStdZ",

"V345" = "fBodyAccJerkMeanX",
"V346" = "fBodyAccJerkMeanY",
"V347" = "fBodyAccJerkMeanZ",
"V348" = "fBodyAccJerkStdX",
"V349" = "fBodyAccJerkStdY",
"V350" = "fBodyAccJerkStdZ",

"V424" = "fBodyGyroMeanX",
"V425" = "fBodyGyroMeanY",
"V426" = "fBodyGyroMeanZ",
"V427" = "fBodyGyroStdX",
"V428" = "fBodyGyroStdY",
"V429" = "fBodyGyroStdZ",

"V503" = "fBodyAccMagMean",
"V504" = "fBodyAccMagStd",

"V516" = "fBodyBodyAccJerkMagMean",
"V517" = "fBodyBodyAccJerkMagStd",

"V529" = "fBodyBodyGyroMagMean",
"V530" = "fBodyBodyGyroMagStd",

"V542" = "fBodyBodyGyroJerkMagMean",
"V543" = "fBodyBodyGyroJerkMagStd"

))

>xTestDf <- rename(xTestDf, c(
"V1" = "tBodyAccMeanX",
"V2" = "tBodyAccMeanY",
"V3" = "tBodyAccMeanZ",
"V4" = "tBodyAccStdX",
"V5" = "tBodyAccStdY",
"V6" = "tBodyAccStdZ",
"V41" = "tGravityAccMeanX",
"V42" = "tGravityAccMeanY",
"V43" = "tGravityAccMeanZ",
"V44" = "tGravityAccStdX",
"V45" = "tGravityAccStdY",
"V46" = "tGravityAccStdZ",
"V81" = "tBodyAccJerkMeanX",
"V82" = "tBodyAccJerkMeanY",
"V83" = "tBodyAccJerkMeanZ",
"V84" = "tBodyAccJerkStdX",
"V85" = "tBodyAccJerkStdY",
"V86" = "tBodyAccJerkStdZ",

"V121" = "tBodyGyroMeanX",
"V122" = "tBodyGyroMeanY",
"V123" = "tBodyGyroMeanZ",
"V124" = "tBodyGyroStdX",
"V125" = "tBodyGyroStdY",
"V126" = "tBodyGyroStdZ",

"V161" = "tBodyGyroJerkMeanX",
"V162" = "tBodyGyroJerkMeanY",
"V163" = "tBodyGyroJerkMeanZ",
"V164" = "tBodyGyroJerkStdX",
"V165" = "tBodyGyroJerkStdY",
"V166" = "tBodyGyroJerkStdZ",

"V201" = "tBodyAccMagMean",
"V202" = "tBodyAccMagStd",

"V214" = "tGravityAccMagMean",
"V215" = "tGravityAccMagStd",

"V227" = "tBodyAccJerkMagMean",
"V228" = "tBodyAccJerkMagStd",

"V253" = "tBodyGyroJerkMagMean",
"V254" = "tBodyGyroJerkMagStd",

"V266" = "fBodyAccMeanX",
"V267" = "fBodyAccMeanY",
"V268" = "fBodyAccMeanZ",
"V269" = "fBodyAccStdX",
"V270" = "fBodyAccStdY",
"V271" = "fBodyAccStdZ",

"V345" = "fBodyAccJerkMeanX",
"V346" = "fBodyAccJerkMeanY",
"V347" = "fBodyAccJerkMeanZ",
"V348" = "fBodyAccJerkStdX",
"V349" = "fBodyAccJerkStdY",
"V350" = "fBodyAccJerkStdZ",

"V424" = "fBodyGyroMeanX",
"V425" = "fBodyGyroMeanY",
"V426" = "fBodyGyroMeanZ",
"V427" = "fBodyGyroStdX",
"V428" = "fBodyGyroStdY",
"V429" = "fBodyGyroStdZ",

"V503" = "fBodyAccMagMean",
"V504" = "fBodyAccMagStd",

"V516" = "fBodyBodyAccJerkMagMean",
"V517" = "fBodyBodyAccJerkMagStd",

"V529" = "fBodyBodyGyroMagMean",
"V530" = "fBodyBodyGyroMagStd",

"V542" = "fBodyBodyGyroJerkMagMean",
"V543" = "fBodyBodyGyroJerkMagStd"

))

#Selecting only the required columns 
xTrainingDf <- xTrainingDf[, c(
"tBodyAccMeanX",
"tBodyAccMeanY",
"tBodyAccMeanZ",
"tBodyAccStdX",
"tBodyAccStdY",
"tBodyAccStdZ",
"tGravityAccMeanX",
"tGravityAccMeanY",
"tGravityAccMeanZ",
"tGravityAccStdX",
"tGravityAccStdY",
"tGravityAccStdZ",
"tBodyAccJerkMeanX",
"tBodyAccJerkMeanY",
"tBodyAccJerkMeanZ",
"tBodyAccJerkStdX",
"tBodyAccJerkStdY",
"tBodyAccJerkStdZ",

"tBodyGyroMeanX",
"tBodyGyroMeanY",
"tBodyGyroMeanZ",
"tBodyGyroStdX",
"tBodyGyroStdY",
"tBodyGyroStdZ",

"tBodyGyroJerkMeanX",
"tBodyGyroJerkMeanY",
"tBodyGyroJerkMeanZ",
"tBodyGyroJerkStdX",
"tBodyGyroJerkStdY",
"tBodyGyroJerkStdZ",

"tBodyAccMagMean",
"tBodyAccMagStd",

"tGravityAccMagMean",
"tGravityAccMagStd",

"tBodyAccJerkMagMean",
"tBodyAccJerkMagStd",

"tBodyGyroJerkMagMean",
"tBodyGyroJerkMagStd",

"fBodyAccMeanX",
"fBodyAccMeanY",
"fBodyAccMeanZ",
"fBodyAccStdX",
"fBodyAccStdY",
"fBodyAccStdZ",

"fBodyAccJerkMeanX",
"fBodyAccJerkMeanY",
"fBodyAccJerkMeanZ",
"fBodyAccJerkStdX",
"fBodyAccJerkStdY",
"fBodyAccJerkStdZ",

"fBodyGyroMeanX",
"fBodyGyroMeanY",
"fBodyGyroMeanZ",
"fBodyGyroStdX",
"fBodyGyroStdY",
"fBodyGyroStdZ",

"fBodyAccMagMean",
"fBodyAccMagStd",

"fBodyBodyAccJerkMagMean",
"fBodyBodyAccJerkMagStd",

"fBodyBodyGyroMagMean",
"fBodyBodyGyroMagStd",

"fBodyBodyGyroJerkMagMean",
"fBodyBodyGyroJerkMagStd")]

#Selecting only the required columns 
xTestDf <- xTestDf[, c(
"tBodyAccMeanX",
"tBodyAccMeanY",
"tBodyAccMeanZ",
"tBodyAccStdX",
"tBodyAccStdY",
"tBodyAccStdZ",
"tGravityAccMeanX",
"tGravityAccMeanY",
"tGravityAccMeanZ",
"tGravityAccStdX",
"tGravityAccStdY",
"tGravityAccStdZ",
"tBodyAccJerkMeanX",
"tBodyAccJerkMeanY",
"tBodyAccJerkMeanZ",
"tBodyAccJerkStdX",
"tBodyAccJerkStdY",
"tBodyAccJerkStdZ",

"tBodyGyroMeanX",
"tBodyGyroMeanY",
"tBodyGyroMeanZ",
"tBodyGyroStdX",
"tBodyGyroStdY",
"tBodyGyroStdZ",

"tBodyGyroJerkMeanX",
"tBodyGyroJerkMeanY",
"tBodyGyroJerkMeanZ",
"tBodyGyroJerkStdX",
"tBodyGyroJerkStdY",
"tBodyGyroJerkStdZ",

"tBodyAccMagMean",
"tBodyAccMagStd",

"tGravityAccMagMean",
"tGravityAccMagStd",

"tBodyAccJerkMagMean",
"tBodyAccJerkMagStd",

"tBodyGyroJerkMagMean",
"tBodyGyroJerkMagStd",

"fBodyAccMeanX",
"fBodyAccMeanY",
"fBodyAccMeanZ",
"fBodyAccStdX",
"fBodyAccStdY",
"fBodyAccStdZ",

"fBodyAccJerkMeanX",
"fBodyAccJerkMeanY",
"fBodyAccJerkMeanZ",
"fBodyAccJerkStdX",
"fBodyAccJerkStdY",
"fBodyAccJerkStdZ",

"fBodyGyroMeanX",
"fBodyGyroMeanY",
"fBodyGyroMeanZ",
"fBodyGyroStdX",
"fBodyGyroStdY",
"fBodyGyroStdZ",

"fBodyAccMagMean",
"fBodyAccMagStd",

"fBodyBodyAccJerkMagMean",
"fBodyBodyAccJerkMagStd",

"fBodyBodyGyroMagMean",
"fBodyBodyGyroMagStd",

"fBodyBodyGyroJerkMagMean",
"fBodyBodyGyroJerkMagStd")]


#Merge all the columns in the data sets columnwise
> testDataSet <- cbind(subjectTestDf, yTestDf, xTestDf)
> trainingDataSet <- cbind(subjectTrainDf, yTrainingDf, xTrainingDf )

#Merge both test and training data sets 
mergedDataSet <- rbind(testDataSet, trainingDataSet)

#Rename the activity to the more meaningful labels
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("1")] <- "WALKING"
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("2")] <- "WALKING_UPSTAIRS"
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("3")] <- "WALKING_DOWNSTAIRS"
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("4")] <- "SITTING"
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("5")] <- "STANDING"
> mergedDataSet$ActivityName[mergedDataSet$ActivityName %in% c("6")] <- "LAYING"

#create a second, independent tidy data set with the average of each variable for each activity and each subject.

cleanDataSetMeans <- aggregate(mergedDataSet[, 3:ncol(mergedDataSet)],
                       by=list(subject = mergedDataSet$subjectName, 
                               label = mergedDataSet$ActivityName ),
                       mean)
-------------------------------------------------------------------------------------
write output to a text file in ./data folder

write.table(format(cleanDataSetMeans, scientific=T), "./data/tidy2.txt",row.names=F, col.names=F, quote=2)
