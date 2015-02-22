
library(data.table)
library(dplyr)
library(plyr)

#Getting the data
trainSubj <- read.table('UCI HAR Dataset/train/subject_train.txt')
testSubj <- read.table('UCI HAR Dataset/test/subject_test.txt')
trainFeatures <- read.table('UCI HAR Dataset/train/X_train.txt')
testFeatures <- read.table('UCI HAR Dataset/test/X_test.txt')
trainActivities <- read.table('UCI HAR Dataset/train/Y_train.txt')
testActivities <- read.table('UCI HAR Dataset/test/Y_test.txt')

#join train and test data using rbind
subjects <- rbind(trainSubj,testSubj)
features <- rbind(trainFeatures, testFeatures)
activities <- rbind(trainActivities, testActivities)

#Getting the features which are the first 561 columns 
name_features <- read.table("UCI HAR Dataset/features.txt")
#get rid of the first column that we don't need
name_features <- name_features[,2]
name_features <- as.character(name_features)
#make names more readable by removing parenthesis and useless signs
name_features <-  gsub("([-])", "_", gsub("([()])", "", name_features))
#replace comas by '_'
name_features <- gsub("([,])", "_", name_features)


#binding the columns to build the table
mydf <- cbind(subjects, activities, features)

#renaming columns
colnames(mydf)[1] <- "subject"
colnames(mydf)[2] <- "activity"
for (i in 1:561){
  col = paste("V",i, sep="")
  colnames(mydf)[(2+i)] <- name_features[i]
}


#using dplyr library to simplify things
library(dplyr)
df <- tbl_df(mydf)

#replace the activities by their name in data frame
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')
labels <- select(activity_labels, V2)
df <- df %>%  mutate(activity = labels[activity,])

#take only columns that contain words 'mean' and 'std'
tidy1 <- df[,c(1,2, grep('mean', names(df), grep('std', names(df))))] 
write.csv(tidy1, "tidy1.csv", row.names=FALSE)

#get the second dataset from tidy1 grouped by activity and subject with corresponding averages 
tidy2 <- tidy1 %>%
           group_by(subject,activity) %>%
             summarise_each(funs(mean))

write.csv(tidy2, "tidy2.csv", row.names=FALSE)

#if we want a table with the column names:
write.table(tidy2, 'tidy2.txt', row.names=T,col.names=T)








