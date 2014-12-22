#Author: Brandon Chiazza
#Date: December 1, 2014
#Getting and Cleaning Data: Course Project


#==============================================NOTE=====================================================

#    ***************Data was created from the following source:****************
#               Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
#               Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
#               Hardware-Friendly Support Vector Machine. International Workshop of Ambient 	
#               Assisted Living (IWAAL 2012). Vitoria-#Gasteiz, Spain. Dec 2012.

#==============================================END NOTE=================================================

#=======================================================================================================
#--------------------------------------------INSTRUCTIONS-----------------------------------------------
#=======================================================================================================
#You should create one R script called run_analysis.R that does the following:
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately label the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average 
#  of each variable for each activity and each subject.
#=======================================================================================================
#------------------------------------------END INSTRUCTIONS---------------------------------------------
#=======================================================================================================


#=======================================================================================================
#---------------------------------------------PREPARATION-----------------------------------------------
#=======================================================================================================


#load relevant library connections

library(data.table)
library(dplyr)
library(xlsx)
library(tidyr)
library(reshape)


#set working directory
#setwd("D:/")	# this is only for my specified drives.

#=======================================================================================================
#------------------------------------------END PREPARATION----------------------------------------------
#=======================================================================================================

#=======================================================================================================
#--------------------------PART 1. MERGE TRAINING AND TEST DATA SETS------------------------------------
#=======================================================================================================

#===================================STEP 1. read in files and assign to object==========================
features.file.path <- "./UCI HAR Dataset/features.txt"

test.file.path <- "./UCI HAR Dataset/test/X_test.txt"
test.lbl.file.path <- "./UCI HAR Dataset/test/y_test.txt"
test.sub.file.path <- "./UCI HAR Dataset/test/subject_test.txt"

training.file.path <- "./UCI HAR Dataset/train/X_train.txt"
training.lbl.file.path <- "./UCI HAR Dataset/train/y_train.txt"
training.sub.file.path <- "./UCI HAR Dataset/train/subject_train.txt"

activities.file.path <- "./UCI HAR Dataset/activity_labels.txt"

#===================================STEP 2. read-in tables and assign labels============================

test.set <- read.table(test.file.path)
test.lbl <- read.table(test.lbl.file.path)
test.sub <- read.table(test.sub.file.path)


training.set <- read.table(training.file.path)
training.lbl <- read.table(training.lbl.file.path)
training.sub <- read.table(training.sub.file.path)


features <- read.table(features.file.path)


activities <- read.table(activities.file.path)


#==================================STEP.3 Add column headers to table===================================


features.select <- select(features, V2) # select column 2 from data table
features.final <- t(features.select) # transpose column headers to a row
features.char <- make.names(features.final, unique=TRUE) # assign as character vector
names(test.set) <- features.char # assign data set with column names
names(training.set) <- features.char # assign data set with column names
names(training.sub) <- "subject"
names(test.sub) <- "subject"
names(training.lbl) <- "activity"
names(test.lbl) <- "activity"

#====================================STEP 4. Combine Test and Training==================================

combine.test <- cbind(test.sub,test.lbl, test.set) #add subjects and labels to test set
combine.training <- cbind(training.sub, training.lbl, training.set) #add subjects and labels

data <- rbind(combine.test,combine.training) #combines test and training datasets


##print(data)
#Source: local data frame [10,299 x 563]

#   subject label tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X
#1        2     5         0.2571778       -0.02328523       -0.01465376       -0.9384040
#2        2     5         0.2860267       -0.01316336       -0.11908252       -0.9754147
#3        2     5         0.2754848       -0.02605042       -0.11815167       -0.9938190
#4        2     5         0.2702982       -0.03261387       -0.11752018       -0.9947428
#5        2     5         0.2748330       -0.02784779       -0.12952716       -0.9938525
#6        2     5         0.2792199       -0.01862040       -0.11390197       -0.9944552
#7        2     5         0.2797459       -0.01827103       -0.10399988       -0.9958192
#8        2     5         0.2746005       -0.02503513       -0.11683085       -0.9955944
#9        2     5         0.2725287       -0.02095401       -0.11447249       -0.9967841
#10       2     5         0.2757457       -0.01037199       -0.09977589       -0.9983731
#..     ...   ...               ...               ...               ...              ...
#Variables not shown: ...


#=======================================================================================================
#------------------------------------------END PART. 1--------------------------------------------------
#=======================================================================================================

#=======================================================================================================
#-------------------------------------PART 2. EXTRACT MEAN AND ST. DEVIATION----------------------------
#=======================================================================================================

#=============================STEP 1. select only those headers with "mean" and "std"===================

#select columns that contain mean and st. deviation. Note: I included all columns that had either "mean"
# or "std". It was not clear from the directions whether we use strictly "std()" or "mean()" so I conserv
#-tively chose to keep the query for columns containing mean or std as more vague. 
data1 <- select(data, subject, activity, contains("mean"), contains("std"))

#output
#print(data1)

#Source: local data frame [10,299 x 88]

#   subject activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tGravityAcc.mean...X
#1        2        5         0.2571778       -0.02328523       -0.01465376            0.9364893
#2        2        5         0.2860267       -0.01316336       -0.11908252            0.9274036
#3        2        5         0.2754848       -0.02605042       -0.11815167            0.9299150
#4        2        5         0.2702982       -0.03261387       -0.11752018            0.9288814
#5        2        5         0.2748330       -0.02784779       -0.12952716            0.9265997
#6        2        5         0.2792199       -0.01862040       -0.11390197            0.9256632
#7        2        5         0.2797459       -0.01827103       -0.10399988            0.9261366
#8        2        5         0.2746005       -0.02503513       -0.11683085            0.9265862
#9        2        5         0.2725287       -0.02095401       -0.11447249            0.9255553
#10       2        5         0.2757457       -0.01037199       -0.09977589            0.9241734
#..     ...      ...               ...               ...               ...                  ...
#Variables not shown: ...

#=======================================================================================================
#------------------------------------------END PART. 2--------------------------------------------------
#=======================================================================================================

#=======================================================================================================
#-------------------------------------PART 3. DESCRIPTIVE ACTIVITY NAMES--------------------------------
#=======================================================================================================


#creates a new column of activity values replaced with labels using the ifelse() and 
#replace() functions. Looks at value in each column and replaces it with the activity label.

activity.column <- ifelse(data1$activity==1,replace(data1$activity,data1$activity==1,'WALKING'),
                          
                          ifelse(data1$activity==2,replace(data1$activity,data1$activity==2,'WALKING_UPSTAIRS'),
                                 
                                 ifelse(data1$activity==3,replace(data1$activity,data1$activity==3,'WALKING_DOWNSTAIRS'),
                                        
                                        ifelse(data1$activity==4,replace(data1$activity,data1$activity==4,'SITTING'),
                                               
                                               ifelse(data1$activity==5,replace(data1$activity,data1$activity==5,'STANDING'),
                                                      
                                                      ifelse(data1$activity==6,replace(data1$activity,data1$activity==6,'LAYING'),"NA"))))))

#replaces the activity column with descriptive activity names

data1$activity <- activity.column

#output

#> head(data1)
#  subject activity tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tGravityAcc.mean...X
#1       2 STANDING         0.2571778       -0.02328523       -0.01465376            0.9364893
#2       2 STANDING         0.2860267       -0.01316336       -0.11908252            0.9274036
#3       2 STANDING         0.2754848       -0.02605042       -0.11815167            0.9299150
#4       2 STANDING         0.2702982       -0.03261387       -0.11752018            0.9288814
#5       2 STANDING         0.2748330       -0.02784779       -0.12952716            0.9265997
#6       2 STANDING         0.2792199       -0.01862040       -0.11390197            0.9256632

#> dim(data1)
#[1] 10299    88

#=======================================================================================================
#-----------------------------------------END PART. 3---------------------------------------------------
#=======================================================================================================
#=======================================================================================================
#-------------------------------------PART 4. Descriptive Labels----------------------------------------
#=======================================================================================================
#added descriptive label names and applied this to the current data table

names.1 <- gsub("tBody", "TimeBody", names(data1)) #changes tBody to TimeBody
names.2 <- gsub("fBody", "FreqBody", names.1) #changes fBody to FreqBody
names.3 <- gsub("tGravity", "TimeGravity", names.2) #changes tGravity to TimeGravity
names.4 <- gsub("fGravity", "FreqGravity", names.3) #changes fGravity to FreqGravity
names.5 <- gsub("BodyBody", "Body", names.4) #changes double "Body" to only one Body
names.6 <- gsub("\\.\\.\\.", "\\.", names.5) # removes elispses
names.7 <- gsub("\\.\\.", "\\.", names.6) # removes elispses
names.8 <- gsub("\\.$", "", names.7) # removes period at end of column name
names(data1) <- names.8

#=======================================================================================================
#-------------------------------------END PART 4.-------------------------------------------------------
#=======================================================================================================

#=======================================================================================================
#-------------------------------------PART 5. average of columns----------------------------------------
#=======================================================================================================

#applies mean to columns specified. **Description** summarise_each_() allows you to summarize 
#across multiple variables. group_by() chooses the data to group. Here I have grouped 'data1' by
#"subject" then by "activity". Then I have applied the mean function on columns 3 - 88. 

avg.sub <-summarise_each_(group_by(data1,subject,activity), funs(mean), names(data1[,3:ncol(data1)]))

#output avg.sub
#print(avg.sub) #***REMOVE THE NOTE COMMENT TO SEE OUTPUT OR VIEW BELOW****

#Source: local data frame [180 x 88]

#   subject           activity TimeBodyAcc.mean.X TimeBodyAcc.mean.Y
#       1             LAYING          0.2215982       -0.040513953
#       1            SITTING          0.2612376       -0.001308288
#       1           STANDING          0.2789176       -0.016137590
#       1            WALKING          0.2773308       -0.017383819
#       1 `WALKING_DOWNSTAIRS          0.2891883       -0.009918505
#       1   WALKING_UPSTAIRS          0.2554617       -0.023953149
#       2             LAYING          0.2813734       -0.018158740
#       2            SITTING          0.2770874       -0.015687994
#       2           STANDING          0.2779115       -0.018420827
#       2            WALKING          0.2764266       -0.018594920
#..     ...                ...                ...                ...
#Variables not shown: TimeBodyAcc.mean.Z (dbl), TimeGravityAcc.mean.X

#=======================================================================================================
#-------------------------------------------END PART 5.-------------------------------------------------
#=======================================================================================================

#****Use the following code to check the tidy data set in R******
write.table(avg.sub, row.name=FALSE, "./avg.sub.tidy.txt")
g <-read.table("./avg.sub.tidy.txt", header=TRUE)
head(g)
