##CodeBook for Course Project - Getting and Cleaning Data

<p>Data was created from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">  Smartphones to assess human activity</a>. The Human Activity Recognition database  was derived from built observing 30 subjects performing activities of daily living (ADL) while carrying a smartphone with containing sensors.<sup> 1 </sup> </p>.

<h2>Alterations to the dataset</h2>
<p>The following outlines the general alterations to the dataset:</p>

1. Combine Test and Training data
2. Apply Features File names to the data set
3. Merge with each activity and subject
4. Clearly identify each activity, subject ID, and column names
5. Parse any data that contained mean or standard deviation (std) in its column name
6. Take the mean of this data
7. Group by subject ID and then by each of the seven activities


<p>The result is a 180 X 88 dataframe with each subject (1-30) identifiable and each activity type (e.g, "LAYING","WALKING", etc.) idenfied. The mean for the parsed columns is then applied in the grouping. </p>

<h2>Table Descriptions</h2>
<table class="tableizer-table">
<tr class="tableizer-firstrow"><th>Field</th><th>Original</th><th>Class</th><th>Description</th></tr>
 <tr><td>subject</td><td>Not Applicable</td><td>Numeric - primary key</td><td>Thirty subjects were used in the study. Valid values for this field are 1 to 30.</td></tr>
 <tr><td>activity</td><td>Not Applicable</td><td>Categorical</td><td>Six activities that describe each subject's type of movement: "LAYING," WALKING," "SITTING," "STANDING," "WALKING_UPSTAIRS," "WALKING_DOWNSTAIRS"</td></tr>
 <tr><td>TimeBodyAcc.mean.X</td><td>tBodyAcc-mean()-X</td><td>Numeric</td><td>Mean of the time - body acceleration along axis "X"</td></tr>
 <tr><td>TimeBodyAcc.mean.Y</td><td>tBodyAcc-mean()-Y</td><td>Numeric</td><td>Mean of the time - body acceleration along axis "Y"</td></tr>
 <tr><td>TimeBodyAcc.mean.Z</td><td>tBodyAcc-mean()-Z</td><td>Numeric</td><td>Mean of the time - body acceleration along axis "Z"</td></tr>
 <tr><td>TimeGravityAcc.mean.X</td><td>tGravityAcc-mean()-X</td><td>Numeric</td><td>Mean of the time - body gravity along axis "X"</td></tr>
 <tr><td>TimeGravityAcc.mean.Y</td><td>tGravityAcc-mean()-Y</td><td>Numeric</td><td>Mean of the time - body gravity along axis "Y"</td></tr>
 <tr><td>TimeGravityAcc.mean.Z</td><td>tGravityAcc-mean()-Z</td><td>Numeric</td><td>Mean of the time - body gravity along axis "Z"</td></tr>
 <tr><td>TimeBodyAccJerk.mean.X</td><td>tBodyAccJerk-mean()-X</td><td>Numeric</td><td>Mean of the time - body acceleration jerk along axis "X"</td></tr>
 <tr><td>TimeBodyAccJerk.mean.Y</td><td>tBodyAccJerk-mean()-Y</td><td>Numeric</td><td>Mean of the time - body acceleration jerk along axis "Y"</td></tr>
 <tr><td>TimeBodyAccJerk.mean.Z</td><td>tBodyAccJerk-mean()-Z</td><td>Numeric</td><td>Mean of the time - body acceleration jerk along axis "Z"</td></tr>
 <tr><td>TimeBodyGyro.mean.X</td><td>tBodyGyro-mean()-X</td><td>Numeric</td><td>Mean of the time - body gyroscopic mean along axis "X"</td></tr>
 <tr><td>TimeBodyGyro.mean.Y</td><td>tBodyGyro-mean()-Y</td><td>Numeric</td><td>Mean of the time - body gyroscopic mean along axis "Y"</td></tr>
 <tr><td>TimeBodyGyro.mean.Z</td><td>tBodyGyro-mean()-Z</td><td>Numeric</td><td>Mean of the time - body gyroscopic mean along axis "Z"</td></tr>
 <tr><td>TimeBodyGyroJerk.mean.X</td><td>tBodyGyroJerk-mean()-X</td><td>Numeric</td><td>Mean of the time - body gyroscopic Jerk mean along axis "X"</td></tr>
 <tr><td>TimeBodyGyroJerk.mean.Y</td><td>tBodyGyroJerk-mean()-Y</td><td>Numeric</td><td>Mean of the time - body gyroscopic Jerk mean along axis "Y"</td></tr>
 <tr><td>TimeBodyGyroJerk.mean.Z</td><td>tBodyGyroJerk-mean()-Z</td><td>Numeric</td><td>Mean of the time - body gyroscopic Jerk mean along axis "Z"</td></tr>
 <tr><td>TimeBodyAccMag.mean</td><td>tBodyAccMag-mean()</td><td>Numeric</td><td>Mean of the time - body acceleration magnitude mean</td></tr>
 <tr><td>TimeGravityAccMag.mean</td><td>tGravityAccMag-mean()</td><td>Numeric</td><td>Mean of the time - gravity acceleration magnitude mean</td></tr>
 <tr><td>TimeBodyAccJerkMag.mean</td><td>tBodyAccJerkMag-mean()</td><td>Numeric</td><td>Mean of the time - body acceleration Jerk magnitude mean</td></tr>
 <tr><td>TimeBodyGyroMag.mean</td><td>tBodyGyroMag-mean()</td><td>Numeric</td><td>Mean of the time - body gyroscopic magnitude mean</td></tr>
 <tr><td>TimeBodyGyroJerkMag.mean</td><td>tBodyGyroJerkMag-mean()</td><td>Numeric</td><td>Mean of the time - body gyroscopic Jerk magnitude mean</td></tr>
 <tr><td>FreqBodyAcc.mean.X</td><td>fBodyAcc-mean()-X</td><td>Numeric</td><td>Mean of frequency-body acceleration mean along axis "X"</td></tr>
 <tr><td>FreqBodyAcc.mean.Y</td><td>fBodyAcc-mean()-Y</td><td>Numeric</td><td>Mean of frequency-body acceleration mean along axis "Y"</td></tr>
 <tr><td>FreqBodyAcc.mean.Z</td><td>fBodyAcc-mean()-Z</td><td>Numeric</td><td>Mean of frequency-body acceleration mean along axis "Z"</td></tr>
 <tr><td>FreqBodyAcc.meanFreq.X</td><td>fBodyAcc-meanFreq()-X</td><td>Numeric</td><td>Mean of frequency-body acceleration mean frequency along axis "X"</td></tr>
 <tr><td>FreqBodyAcc.meanFreq.Y</td><td>fBodyAcc-meanFreq()-Y</td><td>Numeric</td><td>Mean of frequency-body acceleration mean frequency along axis "Y"</td></tr>
 <tr><td>FreqBodyAcc.meanFreq.Z</td><td>fBodyAcc-meanFreq()-Z</td><td>Numeric</td><td>Mean of frequency-body acceleration mean frequency along axis "Z"</td></tr>
 <tr><td>FreqBodyAccJerk.mean.X</td><td>fBodyAccJerk-mean()-X</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean along axis "X"</td></tr>
 <tr><td>FreqBodyAccJerk.mean.Y</td><td>fBodyAccJerk-mean()-Y</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean along axis "Y"</td></tr>
 <tr><td>FreqBodyAccJerk.mean.Z</td><td>fBodyAccJerk-mean()-Z</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean along axis "Z"</td></tr>
 <tr><td>FreqBodyAccJerk.meanFreq.X</td><td>fBodyAccJerk-meanFreq()-X</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean frequency along axis "X"</td></tr>
 <tr><td>FreqBodyAccJerk.meanFreq.Y</td><td>fBodyAccJerk-meanFreq()-Y</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean frequency along axis "Y"</td></tr>
 <tr><td>FreqBodyAccJerk.meanFreq.Z</td><td>fBodyAccJerk-meanFreq()-Z</td><td>Numeric</td><td>Mean of frequency-body acceleration Jerk mean frequency along axis "Z"</td></tr>
 <tr><td>FreqBodyGyro.mean.X</td><td>fBodyGyro-mean()-X</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean along axis "X"</td></tr>
 <tr><td>FreqBodyGyro.mean.Y</td><td>fBodyGyro-mean()-Y</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean along axis "Y"</td></tr>
 <tr><td>FreqBodyGyro.mean.Z</td><td>fBodyGyro-mean()-Z</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean along axis "Z"</td></tr>
 <tr><td>FreqBodyGyro.meanFreq.X</td><td>fBodyGyro-meanFreq()-X</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean frequency along axis "Z"</td></tr>
 <tr><td>FreqBodyGyro.meanFreq.Y</td><td>fBodyGyro-meanFreq()-Y</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean frequency along axis "Y"</td></tr>
 <tr><td>FreqBodyGyro.meanFreq.Z</td><td>fBodyGyro-meanFreq()-Z</td><td>Numeric</td><td>Mean of frequency-body gyroscopic mean frequency along axis "Z"</td></tr>
 <tr><td>FreqBodyAccMag.mean</td><td>fBodyAccMag-mean()</td><td>Numeric</td><td>Mean of frequency-body acceleration magnitude mean</td></tr>
 <tr><td>FreqBodyAccMag.meanFreq</td><td>fBodyAccMag-meanFreq()</td><td>Numeric</td><td>Mean of frequency-body acceleration magnitude mean frequency</td></tr>
 <tr><td>FreqBodyAccJerkMag.mean</td><td>fBodyBodyAccJerkMag-mean()</td><td>Numeric</td><td>Mean of frequency-body acceleration jerk magnitude mean</td></tr>
 <tr><td>FreqBodyAccJerkMag.meanFreq</td><td>fBodyBodyAccJerkMag-meanFreq()</td><td>Numeric</td><td>Mean of frequency-body acceleration jerk magnitude mean frequency</td></tr>
 <tr><td>FreqBodyGyroMag.mean</td><td>fBodyBodyGyroMag-mean()</td><td>Numeric</td><td>Mean of frequency body gyroscopic magnitude mean</td></tr>
 <tr><td>FreqBodyGyroMag.meanFreq</td><td>fBodyBodyGyroMag-meanFreq()</td><td>Numeric</td><td>Mean of frequency body gyroscopic magnitude mean frequency</td></tr>
 <tr><td>FreqBodyGyroJerkMag.mean</td><td>fBodyBodyGyroJerkMag-mean()</td><td>Numeric</td><td>Mean of frequency-body gyroscopic Jerk magnitude mean</td></tr>
 <tr><td>FreqBodyGyroJerkMag.meanFreq</td><td>fBodyBodyGyroJerkMag-meanFreq()</td><td>Numeric</td><td>Mean of frequency-body gyroscopic Jerk magnitude mean frequency</td></tr>
 <tr><td>angle.TimeBodyAccMean.gravity</td><td>angle(tBodyAccMean,gravity)</td><td>Numeric</td><td>Angle of time-body acceleration mean - gravity</td></tr>
 <tr><td>angle.TimeBodyAccJerkMean.gravityMean</td><td>angle(tBodyAccJerkMean),gravityMean)</td><td>Numeric</td><td>Angle of time-body acceleration mean - gravity mean</td></tr>
 <tr><td>angle.TimeBodyGyroMean.gravityMean</td><td>angle(tBodyGyroMean,gravityMean)</td><td>Numeric</td><td>Angle of time-body gyroscopic mean- gravity mean</td></tr>
 <tr><td>angle.TimeBodyGyroJerkMean.gravityMean</td><td>angle(tBodyGyroJerkMean,gravityMean)</td><td>Numeric</td><td>Angle of time-body gyroscopic Jerk mean- gravity mean</td></tr>
 <tr><td>angle.X.gravityMean</td><td>angle(X,gravityMean)</td><td>Numeric</td><td>Mean of angle of gravity mean on axis "X"</td></tr>
 <tr><td>angle.Y.gravityMean</td><td>angle(Y,gravityMean)</td><td>Numeric</td><td>Mean of angle of gravity mean on axis "Y"</td></tr>
 <tr><td>angle.Z.gravityMean</td><td>angle(Z,gravityMean)</td><td>Numeric</td><td>Mean of angle of gravity mean on axis "Z"</td></tr>
 <tr><td>TimeBodyAcc.std.X</td><td>tBodyAcc-std()-X</td><td>Numeric</td><td>Mean of time-body acceleration standard deviation along axis "X"</td></tr>
 <tr><td>TimeBodyAcc.std.Y</td><td>tBodyAcc-std()-Y</td><td>Numeric</td><td>Mean of time-body acceleration standard deviation along axis "Y"</td></tr>
 <tr><td>TimeBodyAcc.std.Z</td><td>tBodyAcc-std()-Z</td><td>Numeric</td><td>Mean of time-body acceleration standard deviation along axis "Z"</td></tr>
 <tr><td>TimeGravityAcc.std.X</td><td>tGravityAcc-std()-X</td><td>Numeric</td><td>Mean of time-gravity acceleration standard deviation along axis "X"</td></tr>
 <tr><td>TimeGravityAcc.std.Y</td><td>tGravityAcc-std()-Y</td><td>Numeric</td><td>Mean of time-gravity acceleration standard deviation along axis "Y"</td></tr>
 <tr><td>TimeGravityAcc.std.Z</td><td>tGravityAcc-std()-Z</td><td>Numeric</td><td>Mean of time-gravity acceleration standard deviation along axis "Z"</td></tr>
 <tr><td>TimeBodyAccJerk.std.X</td><td>tBodyAccJerk-std()-X</td><td>Numeric</td><td>Mean of time-body acceleration Jerk standard deviation along axis "X"</td></tr>
 <tr><td>TimeBodyAccJerk.std.Y</td><td>tBodyAccJerk-std()-Y</td><td>Numeric</td><td>Mean of time-body acceleration Jerk standard deviation along axis "Y"</td></tr>
 <tr><td>TimeBodyAccJerk.std.Z</td><td>tBodyAccJerk-std()-Z</td><td>Numeric</td><td>Mean of time-body acceleration Jerk standard deviation along axis "Z"</td></tr>
 <tr><td>TimeBodyGyro.std.X</td><td>tBodyGyro-std()-X</td><td>Numeric</td><td>Mean of time- body-gyroscopic standard deviation along axis "X"</td></tr>
 <tr><td>TimeBodyGyro.std.Y</td><td>tBodyGyro-std()-Y</td><td>Numeric</td><td>Mean of time- body-gyroscopic standard deviation along axis "Y"</td></tr>
 <tr><td>TimeBodyGyro.std.Z</td><td>tBodyGyro-std()-Z</td><td>Numeric</td><td>Mean of time- body-gyroscopic standard deviation along axis "Z"</td></tr>
 <tr><td>TimeBodyGyroJerk.std.X</td><td>tBodyGyroJerk-std()-X</td><td>Numeric</td><td>Mean of time-body gyroscopic Jerk standard deviation along axis "X"</td></tr>
 <tr><td>TimeBodyGyroJerk.std.Y</td><td>tBodyGyroJerk-std()-Y</td><td>Numeric</td><td>Mean of time-body gyroscopic Jerk standard deviation along axis "Y"</td></tr>
 <tr><td>TimeBodyGyroJerk.std.Z</td><td>tBodyGyroJerk-std()-Z</td><td>Numeric</td><td>Mean of time-body gyroscopic Jerk standard deviation along axis "Z"</td></tr>
 <tr><td>TimeBodyAccMag.std</td><td>tBodyAccMag-std()</td><td>Numeric</td><td>Mean of time-body acceleration magnitude standard deviation</td></tr>
 <tr><td>TimeGravityAccMag.std</td><td>tGravityAccMag-std()</td><td>Numeric</td><td>Mean of time-body gravity acceleration magnitude standard deviation</td></tr>
 <tr><td>TimeBodyAccJerkMag.std</td><td>tBodyAccJerkMag-std()</td><td>Numeric</td><td>Mean of time-body gravity acceleration Jerk magnitude standard deviation</td></tr>
 <tr><td>TimeBodyGyroMag.std</td><td>tBodyGyroMag-std()</td><td>Numeric</td><td>Mean of time-body gyroscopic magnitude standard deviation</td></tr>
 <tr><td>TimeBodyGyroJerkMag.std</td><td>tBodyGyroJerkMag-std()</td><td>Numeric</td><td>Mean of time-body gyroscopic Jerk magnitude standard deviation</td></tr>
 <tr><td>FreqBodyAcc.std.X</td><td>fBodyAcc-std()-X</td><td>Numeric</td><td>Mean of frequency body acceleration standard deviation along axis "X"</td></tr>
 <tr><td>FreqBodyAcc.std.Y</td><td>fBodyAcc-std()-Y</td><td>Numeric</td><td>Mean of frequency body acceleration standard deviation along axis "Y"</td></tr>
 <tr><td>FreqBodyAcc.std.Z</td><td>fBodyAcc-std()-Z</td><td>Numeric</td><td>Mean of frequency body acceleration standard deviation along axis "Z"</td></tr>
 <tr><td>FreqBodyAccJerk.std.X</td><td>fBodyAccJerk-std()-X</td><td>Numeric</td><td>Mean of frequency body acceleration Jerk standard deviation along axis "X"</td></tr>
 <tr><td>FreqBodyAccJerk.std.Y</td><td>fBodyAccJerk-std()-Y</td><td>Numeric</td><td>Mean of frequency body acceleration Jerk standard deviation along axis "Y"</td></tr>
 <tr><td>FreqBodyAccJerk.std.Z</td><td>fBodyAccJerk-std()-Z</td><td>Numeric</td><td>Mean of frequency body acceleration Jerk standard deviation along axis "Z"</td></tr>
 <tr><td>FreqBodyGyro.std.X</td><td>fBodyGyro-std()-X</td><td>Numeric</td><td>Mean of frequency body gyroscopic standard deviation standard deviation along axis "X"</td></tr>
 <tr><td>FreqBodyGyro.std.Y</td><td>fBodyGyro-std()-Y</td><td>Numeric</td><td>Mean of frequency body gyroscopic standard deviation standard deviation along axis "Y"</td></tr>
 <tr><td>FreqBodyGyro.std.Z</td><td>fBodyGyro-std()-Z</td><td>Numeric</td><td>Mean of frequency body gyroscopic standard deviation standard deviation along axis "Z"</td></tr>
 <tr><td>FreqBodyAccMag.std</td><td>fBodyAccMag-std()</td><td>Numeric</td><td>Mean of frequency body acceleration magnitude standard deviation</td></tr>
 <tr><td>FreqBodyAccJerkMag.std</td><td>fBodyBodyAccJerkMag-std()</td><td>Numeric</td><td>Mean of frequency body acceleration Jerk magnitude standard deviation</td></tr>
 <tr><td>FreqBodyGyroMag.std</td><td>fBodyBodyGyroMag-std()</td><td>Numeric</td><td>Mean of frequency body gyroscopic magnitude standard deviation</td></tr>
 <tr><td>FreqBodyGyroJerkMag.std</td><td>fBodyBodyGyroJerkMag-std()</td><td>Numeric</td><td>Mean of frequency body gyroscopic Jerk magnitude standard deviation</td></tr>
</table>












===================================
1. Source: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on "Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-#Gasteiz, Spain. Dec 2012.
