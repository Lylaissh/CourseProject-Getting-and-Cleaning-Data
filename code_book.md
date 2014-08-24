### CODE BOOK - run_analysis.R


## Description of variables used in the script
## to create tidy data


features		The names of the feature variables in the data set
activity_labels		The activity labels used for experiment
x_test			Feature measurements for test set subjects
y_test			Activity indices for test set subjects
subject_test		Subject numbers used for test set
x_train			Feature measurements for training set subjects
y_train			Activity indices for training set subjects
subject_train		Subject numbers used for training set
test_data		Binded feature variable measurement data with subject numbers 
			and activity labels for measurements for test set subjects
training_data		Binded feature variable measurement data with subject numbers 
			and activity labels for measurements for training set subjects
combined_data		Tidy data set with test and training set subject data combined
subset_data1		columns with "mean" feature value calculations
subset_data2		columns with "std" feature value calculation
tidy_data_names 	names of features variables read from text file in folder, 
			this text file is manually created and included with the script
			"tidy_data_names.txt"
tidy_data		Data set with values for feature variables avaraged by subject 
			number and activity type
reread_tidy_data	tidy_data re read from the folder to verify the accuracy of values

