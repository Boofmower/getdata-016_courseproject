##Getting And Cleaning Data - Course Project
=========================
This is repository is for a course project for "Getting and Cleaning Data," a class offered through <a href="https://www.coursera.org/#jhu">Coursera and Johns Hopkins University</a>. 
There are several files in the repository. Each file is part of an analysis that used a dataset created from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">  Smartphones to assess human activity</a>. 
=========================
##Course Project Instructions
You should create one R script called run_analysis.R that does the following. 
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement. </li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names. </li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

##Files in this Repository
=========================

The following outlines each file in the repository: 

<ul>
<li> CodeBook.md - a Code Book for the dataset mentioned above. This was created to define the variables and alterations to the data that took place. </li>
<li> run_analysis.R - the R code to run the analysis that fits the criteria outlined in the instructions above. This analysis assumes that the user has downloaded the dataset into its R working directory. </li>
<li> avg.sub.tidy.txt - the output file from the analysis above. This is the tidy dataset created by first grouping by subjects, then by each of the six activities relevated to the data, and then by the mean of each of the parsed variables. </li>
</ul>


Author: Brandon Chiazza
Date Created: December 8, 2014

