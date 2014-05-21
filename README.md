## Getting and Cleaning Data Course Project README

#### Instructions for run_analysis.R

* Download file from the [UCI Machine Learning Repository](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

* Unzip file into your working directory such that folder **UCI HAR Dataset**
  is in your working directory

* Copy run_analysis.R into your working directory

* Run run_anaysis.R

	1. The script merges the following files:
	* subject_train.txt
	* Y_train.txt
	* X_train.txt
	* subject_test.txt
	* Y_test.txt
	* X_test.txt

	2. Then it eliminates unnecessary columns keeping only the 
	   Mean() and std() columns

	3. The remaining columns are given more meaningful column names

	4. The numeric activities are replaced with more meaningful names

	5. Each column of means and STD are averaged by Subject and Activity


* This will create file tidy_data_set.txt in your working directory
