#Getting And Cleaning Data - Course Project
<p>This is repository is for a course project for "Getting and Cleaning Data," a class offered through <a href="https://www.coursera.org/#jhu">Coursera and Johns Hopkins University</a>. </p>
<p>There are several files in the repository. Each file is part of an analysis that used a dataset created from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">  Smartphones to assess human activity</a>. </p>

##Course Project Instructions
<p>You should create one R script called run_analysis.R that does the following.</p>
<ol>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement. </li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names. </li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>

##Files in this Repository

<p>The following outlines each file in the repository: </p>

<ul>
<li> CodeBook.md - a Code Book for the dataset mentioned above. This was created to define the variables and alterations to the data that took place. </li>
<li> <a href="https://github.com/Boofmower/getdata-016_courseproject/blob/master/run_analysis.R"> run_analysis.R </a> - the R code to run the analysis that fits the criteria outlined in the instructions above. This analysis assumes that the user has downloaded the dataset into its R working directory. </li>
<li> avg.sub.tidy.txt - the output file from the analysis above. This is the tidy dataset created by first grouping by subjects, then by each of the six activities relevated to the data, and then by the mean of each of the parsed variables. </li>
</ul>

## Dependencies
<p> Several packages must be installed in order to run the analysis. The following provides you with links to install them:</p>
<ul>
<li><a href = "http://cran.r-project.org/web/packages/data.table/index.html"> data.table</a>: "Fast aggregation of large data (e.g. 100GB in RAM), fast ordered joins, fast add/modify/delete of columns by group using no copies at all, list columns and a fast file reader (fread). Offers a natural and flexible syntax, for faster development."</li>
<li><a href = "http://cran.r-project.org/web/packages/dplyr/index.html">dplyr</a>: "A fast, consistent tool for working with data frame like objects, both in memory and out of memory."</li>
<li><a href = "http://cran.r-project.org/web/packages/xlsx/index.html">xlsx</a>: "Provide R functions to read/write/format Excel 2007 and Excel 97/2000/XP/2003 file formats."</li>
<li><a href = "http://cran.r-project.org/web/packages/tidyr/index.html">tidyr</a>:"An evolution of reshape2. It's designed specifically for data tidying (not general reshaping or aggregating) and works well with dplyr data pipelines."</li>
<li><a href = "http://cran.r-project.org/web/packages/reshape/index.html">reshape</a>:"Reshape lets you flexibly restructure and aggregate data using just two functions: melt and cast."</li>
</ul>
=========================
<p><b>Author:</b> Brandon Chiazza</p>
<p><b>Date Created:</b> December 8, 2014</p>

