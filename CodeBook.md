##CodeBook for Course Project - Getting and Cleaning Data

<p>Data was created from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">  Smartphones to assess human activity</a>. The Human Activity Recognition database  was derived from built observing 30 subjects performing activities of daily living (ADL) while carrying a smartphone with containing sensors.<sup> 1 </sup> </p>.

##Alterations to the dataset
<p>The following outlines the general alterations to the dataset:</p>

1. Combine Test and Training data
2. Apply Features File names to the data set
3. Merge with each activity and subject
4. Clearly identify each activity, subject ID, and column names
5. Parse any data that contained mean or standard deviation (std) in its column name
6. Take the mean of this data
7. Group by subject ID and then by each of the seven activities


<p>The result is a 180 X 88 dataframe with each subject (1-30) identifiable and each activity type (e.g, "LAYING","WALKING", etc.) idenfied. The mean for the parsed columns is then applied in the grouping. </p>

<p>The following is a table that displays the changes to the column names:</p>

















===================================
1. Source: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on "Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-#Gasteiz, Spain. Dec 2012.
