# Lab5

This repository contains R scripts to generate a CSV file 'tidy_dataset.csv'. The raw data for this is the data from University of California Irvine (UCI) "Human Activity Recognition Using Smartphones Data Set". The data contain recordings for 30 volunteers, performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. By this link you can find more information:
  
  *[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]*
  
  ## Requirements
  
  Requirements were to create the following R program:
  - the program gets the data and assign labels
- merge test and train datasets
- uses descriptive activity names to name the activities in the data set
- have a tidy data with the mean and SD variables for each subject and activity as the output.

## R Code

The code was written in the file run_analysis.R. The assumption is the proper data (from UCI Machine Learning Repository - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) is saved and placed to the current working directory.

## CodeBook

A CodeBook that is available in this repository also is relating to the tidy dataset produced by the run_analysis.R script.
At the end tidy_dataset.csv was saved as the output.