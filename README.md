HumanActivityRecognition
========================

Human Activity Recognition Using Smartphones Dataset - Getting and Cleaning Data

#Description

1. fIRST of all i downloaded zip file and save it on the local computer
2. defining Link Library, where all data is
3. import file name features.txt and care for dublicate and illegal characters in the names of variables
4. import Import Activity Labels and name the colnames with ActivityId and Activity
5. import Test Set, y_test and subject_test, and Update names in X_test from features data(step3)
6. import train Set, y_train and subject_train, and Update names in X_train from features data(step3)
7. merging Test Set and Train Set by cbind and rbind, first of all i merge all data from test, then all data from train , and the i use rbind two merge two datasets test and train
8. to the dataframe(step7) i add activities by merging 
9. now i keep only mean and std variables and i do it with grep1, please attention that i keep too subject, activityid and activity
10. calculation avereage for all variables with ddply
11. creation text file of final data