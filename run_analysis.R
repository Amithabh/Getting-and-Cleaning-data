library(reshape2)

myfeature = read.table("features.txt")
myactivity <- read.table("activity_labels.txt")
mysub_train <- read.table("train/subject_train.txt")

# Extracts only the measurements on the mean and standard deviation
act_vec <- tolower(myactivity$V2)
feature_names <- as.character(myfeature$V2)
feature_sub <- feature_names[grepl("(mean)|(std)", feature_names)]
feature_index <- match(feature_sub, feature_names)

# Create tidy Training set
train_X <- read.table("train/X_train.txt")[,feature_index]
train_Y <- read.table("train/y_train.txt")
feature_names <- c("subject", "activity", feature_sub)
feature_names <- gsub("-|,|\\(", "_", gsub("(\\(\\))|\\)", "", feature_names))
train_XY_sub <- cbind(mysub_train,train_Y,train_X)
train_XY_sub[,2] <- factor(train_XY_sub[,2], levels = 1:6, labels = act_vec)
colnames(train_XY_sub) <- feature_names

# Create tidy Testing set
mysub_test <- read.table("test/subject_test.txt")
test_X <- read.table("test/X_test.txt")[,feature_index]
test_Y <- read.table("test/y_test.txt")
test_XY_sub <- cbind(mysub_test,test_Y,test_X)
test_XY_sub[,2] <- factor(test_XY_sub[,2], levels = 1:6, labels = act_vec)
colnames(test_XY_sub) <- feature_names

# Merging training and testing set
merged_data <- rbind(train_XY_sub, test_XY_sub)

# Creating final tidy data
merged_data$subject <- as.factor(merged_data$subject)
#merged_data$activity <- as.factor(merged_data$activity)
merged_data_melt <- melt(merged_data,id = c("subject", "activity"))
merged_data_final <- dcast(merged_data_melt, subject + activity ~ variable, mean)
write.table(merged_data_final, file = "tidy.txt",  row.name=FALSE)
