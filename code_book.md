# CODE BOOK - run_analysis.R


### Description of variables used in the script <br />
### to create tidy data


features -		The names of the feature variables in the data set <br />
activity_labels	-	The activity labels used for experiment <br />
x_test -		Feature measurements for test set subjects <br />
y_test -		Activity indices for test set subjects <br />
subject_test -		Subject numbers used for test set <br />
x_train	-		Feature measurements for training set subjects <br />
y_train	-		Activity indices for training set subjects <br />
subject_train -		Subject numbers used for training set <br />
test_data -		Binded feature variable measurement data with subject numbers <br />
			and activity labels for measurements for test set subjects <br />
training_data -		Binded feature variable measurement data with subject numbers <br />
			and activity labels for measurements for training set subjects <br />
combined_data -		Tidy data set with test and training set subject data combined <br />
subset_data1 -		columns with "mean" feature value calculations <br />
subset_data2 -		columns with "std" feature value calculation <br />
tidy_data_names - 	names of features variables read from text file in folder, <br />
			this text file is manually created and included with the script <br />
			"tidy_data_names.txt" <br />
tidy_data -		Data set with values for feature variables avaraged by subject <br />
			number and activity type <br />
reread_tidy_data -	tidy_data re read from the folder to verify the accuracy of values <br />

