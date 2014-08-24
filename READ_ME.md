# READ ME - Code functioning description
## run_analysis.R 

This script creates a tidy data set from the given HAR data. The output is in the form of a text file "tidy_data.txt". To read this data file use the read.table() function with default values except header = TRUE. The tidy data created is a tall data set with average values calculated for each subject with corresponding to each activity type. There are 180 rows and 81 columns. Variable names are read from the "tidy_data_names.txt" file. These variable names are then applied to the data set in step 13 below. For code to run the file "tidy_data_names.txt" should be in the folder "UCI HAR Dataset". <br />

###	Reading data
1. 	Read all data set text files from folder "UCI HAR Dataset" <br />
2.	Read feature names measured in "features" and activities they were measured for 
	in "activity_labels" <br />
3.	Read test subjects data, x_test is feature values, y_test is activity indices
	subject_test is subject number between 1 to 30 <br />
4.	Read train subjects data, x_train is feature values, y_train is activity indices
	subject_train is subject number between 1 to 30 <br />

###	Creating tidy data set 1
5.	Set column names for test and train feature values <br />
6.	Bind subject data and activity data with feature value data <br />
7.	Rename column names for Subject and Activity columns <br />
8.	Step 1: Bind test and train data sets row wise
	this is first tidy data set <br />
9.	Step 2: Extract feature columns which have "mean" and "std" 
	in their column names <br />
10.	Bind the feature values having "mean" and "std" features <br />
11.	Step 3: Replace activity label indices with corresponding activity names in data set <br />
12.	Arrange data set according to subject in increasing order <br />
13.	Step 4: Read descriptive variable names from text file manually created
	and replace variable names for tidy data set <br />

### 	Creating tidy data set 2
14.	Step 5: Compute mean of feature values by subject number and activity type <br />
15.	Write required tidy data set to current folder <br />
16.	Re read tidy data from folder to verify accuracy, with header=TRUE so
	that column names are read <br />
