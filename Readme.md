## Getting Data:
The data collected from the accelerometers from the Samsung Galaxy S smartphone is used in this project. The original dataset can be accessed through this link here:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
This zip file contains the following files:
1. Training and Testing set
2. activity_labels.txt giving the 6 activities performed by the subjects
3. features.txt, giving the 561 attributes measured
4. Readme files
This dataset has measurements from 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 561 different attributes were measured by this device. 

## Cleaning of Data:
To start with, the first step of cleaning is to convert the activity labels to lower case.
As part of the project, out of the 561 features, only the measurements on the mean and standard deviation for each measurement is extracted. This is done using the grepl command in R. There are about 79 features which satify this criteria. Then, the training set of measurements are subsetted based on these features. The next step is to combine the information on the subjects, the measurements and the activities into a single dataframe. The activities and attributes are then labelled making it more understandable.    
    The same procedure is repeated for the testing set as well. Furthermore, the training and testing datasets are merged into one. 
    Finally the merged data is then made tidy using the dcast and melt fucntion in the reshape2 package in R. This is done so that final dataset shows the average of each variable for each activity and each subject.

