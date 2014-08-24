# Read all data set text files from folder

setwd("c:/Coursera/GettingCleaning/UCI HAR Dataset")


# Read feature names measured in "features" and activities they were measured for
# in "activity_labels"
features <- read.table("features.txt", header = FALSE)
activity_labels <- read.table("activity_labels.txt", header = FALSE)


# Read test subjects data, x_test is feature values, y_test is activity indices
# subject_test is subject number between 1 to 30 
x_test <- read.table("test/x_test.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)
subject_test <- read.table("test/subject_test.txt", header = FALSE)


# Read train subjects data, x_train is feature values, y_train is activity indices
# subject_train is subject number between 1 to 30
x_train <- read.table("train/x_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header = FALSE)
subject_train <- read.table("train/subject_train.txt", header = FALSE)


# Set column names for test and train feature values
names(x_test) <- features$V2
names(x_train) <- features$V2


# Bind subject data and activity data with feature value data
test_data <- cbind(subject_test, y_test, x_test)
train_data <- cbind(subject_train, y_train, x_train)


# Rename column names for Subject and Activity columns
colnames(test_data)[1] <- paste("Subject")
colnames(test_data)[2] <- paste("Activity")
colnames(train_data)[1] <- paste("Subject")
colnames(train_data)[2] <- paste("Activity")


# Step 1: Bind test and train data sets row wise
# this is first tidy data set
combined_data <- rbind(test_data, train_data)


# Step 2: Extract feature columns which have "mean" and "std"
# in their column names
subset_data1 <- combined_data[,grep("mean", names(combined_data))]
subset_data2 <- combined_data[,grep("std", names(combined_data))]


# Bind the feature values having "mean" and "std" features 
combined_data <- cbind(Subject = combined_data$Subject, 
                       Activity = combined_data$Activity, 
                       subset_data1, subset_data2)

# Step 3:
# Replace activity label indices with corresponding activity names in data set
combined_data$Activity[combined_data$Activity == "1"]<-"WALKING"
combined_data$Activity[combined_data$Activity == "2"]<-"WALKING_UPSTAIRS"
combined_data$Activity[combined_data$Activity == "3"]<-"WALKING_DOWNSTAIRS"
combined_data$Activity[combined_data$Activity == "4"]<-"SITTING"
combined_data$Activity[combined_data$Activity == "5"]<-"STANDING"
combined_data$Activity[combined_data$Activity == "6"]<-"LAYING"

# Arrange data set according to subject in increasing order
combined_data <- arrange(combined_data,combined_data$Subject)


# Step 4: Read descriptive variable names from text file manually created
# and replace variable names for tidy data set
tidy_data_names <- read.table("tidy_data_names.txt", header = FALSE)
colnames(combined_data) <- paste (tidy_data_names$V2)


# Step 5: Compute mean of feature values by subject number and activity type
tidy_data <- aggregate(combined_data[,c(-1,-2)], 
                       by = list(Subject = combined_data$Subject, 
                                 Activity = combined_data$Activity), 
                       FUN= mean)


# Write required tidy data set to current folder
write.table(tidy_data, file="tidy_data.txt", 
            sep = "      " , 
            col.names = TRUE, row.names=FALSE)

# Re read tidy data from folder to verify accuracy, with header=TRUE so
# that column names are read
reread_tidy_data <- read.table("tidy_data.txt", header=TRUE)
