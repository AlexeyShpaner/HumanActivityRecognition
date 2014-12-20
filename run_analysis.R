##Defining Link Library
setwd("G:/Alexey/Education/Courses/Data Science Specialization/Getting and Cleaning Data/Quiz/Project/UCI HAR Dataset/")

##Import Variables Names
features = read.table("./features.txt") 
## variable names problems : dublicate and illegal characters 
features$V2 <- gsub("BodyBody","Body",features$V2) 
features$V2 <- gsub("[:():]","",features$V2)

##Import Activity Labels
activity_labels = read.table("./activity_labels.txt",col.names =c("ActivityId","Activity")) 


##Import Test Set and Update names in X_test
X_test = read.table("./test/X_test.txt") 
names(X_test) <- as.vector(features$V2,mode = "any")
y_test = read.table("./test/y_test.txt",col.names ="ActivityId" ) 
subject_test = read.table("./test/subject_test.txt",col.names ="Subject") 


##Import Train Set and Update names in X_train
X_train = read.table("./train/X_train.txt") 
names(X_train) <- as.vector(features$V2,mode = "any")
y_train = read.table("./train/y_train.txt",col.names ="ActivityId") 
subject_train = read.table("./train/subject_train.txt",col.names ="Subject") 


##Merging Test Set and Train Set
df_test <- cbind(y_test,subject_test,X_test)
df_train <- cbind(y_train,subject_train,X_train)
df_test_brain <- rbind(df_train,df_test)

##Add Name Activity
df <- merge(df_test_brain,activity_labels,by = "ActivityId",all.x=TRUE)

## Subset - keep mean and std
df_subset <- df[ , (grepl("mean()|std()" , names( df )) & !grepl("meanFreq",names( df ))) | grepl("Subject|Activity" , names( df )) ]

## Calculation Average for every subject and Activity
library(plyr)
df_avg <-ddply(df_subset , .(Subject,Activity),  colwise(mean))


## Write DataSet  a txt file
write.table(df_avg,"./run_analysis.txt", sep="\t", row.name=FALSE)