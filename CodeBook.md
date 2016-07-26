# CodeBook:

## Identifiers:
1. Subject - ID assigned to each subject varying from 1 to 30
2. Activity - Six different activities performed by each subject:
    - Walking - 1
    - Walking Upstairs - 2
    - Walking Downstairs - 3
    - Sitting - 4
    - Standing - 5
    - Laying - 6

## Features:
- tBodyAcc-mean()-X                   
- tBodyAcc-mean()-Y                   
- tBodyAcc-mean()-Z                   
- tBodyAcc-std()-X                    
- tBodyAcc-std()-Y                    
- tBodyAcc-std()-Z                    
- tGravityAcc-mean()-X               
- tGravityAcc-mean()-Y                
- tGravityAcc-mean()-Z                
- tGravityAcc-std()-X                 
- tGravityAcc-std()-Y                 
- tGravityAcc-std()-Z                 
- tBodyAccJerk-mean()-X               
- tBodyAccJerk-mean()-Y               
- tBodyAccJerk-mean()-Z               
- tBodyAccJerk-std()-X                
- tBodyAccJerk-std()-Y                
- tBodyAccJerk-std()-Z                
- tBodyGyro-mean()-X                  
- tBodyGyro-mean()-Y                  
- tBodyGyro-mean()-Z                  
- tBodyGyro-std()-X                   
- tBodyGyro-std()-Y                   
- tBodyGyro-std()-Z                   
- tBodyGyroJerk-mean()-X              
- tBodyGyroJerk-mean()-Y              
- tBodyGyroJerk-mean()-Z              
- tBodyGyroJerk-std()-X               
- tBodyGyroJerk-std()-Y               
- tBodyGyroJerk-std()-Z               
- tBodyAccMag-mean()                  
- tBodyAccMag-std()                   
- tGravityAccMag-mean()               
- tGravityAccMag-std()                
- tBodyAccJerkMag-mean()              
- tBodyAccJerkMag-std()               
- tBodyGyroMag-mean()                 
- tBodyGyroMag-std()                  
- tBodyGyroJerkMag-mean()             
- tBodyGyroJerkMag-std()              
- fBodyAcc-mean()-X                   
- fBodyAcc-mean()-Y                   
- fBodyAcc-mean()-Z                   
- fBodyAcc-std()-X                    
- fBodyAcc-std()-Y                    
- fBodyAcc-std()-Z                    
- fBodyAcc-meanFreq()-X               
- fBodyAcc-meanFreq()-Y               
- fBodyAcc-meanFreq()-Z               
- fBodyAccJerk-mean()-X               
- fBodyAccJerk-mean()-Y               
- fBodyAccJerk-mean()-Z               
- fBodyAccJerk-std()-X                
- fBodyAccJerk-std()-Y                
- fBodyAccJerk-std()-Z                
- fBodyAccJerk-meanFreq()-X           
- fBodyAccJerk-meanFreq()-Y           
- fBodyAccJerk-meanFreq()-Z           
- fBodyGyro-mean()-X                  
- fBodyGyro-mean()-Y                  
- fBodyGyro-mean()-Z                  
- fBodyGyro-std()-X                  
- fBodyGyro-std()-Y                   
- fBodyGyro-std()-Z                   
- fBodyGyro-meanFreq()-X              
- fBodyGyro-meanFreq()-Y              
- fBodyGyro-meanFreq()-Z              
- fBodyAccMag-mean()                  
- fBodyAccMag-std()                   
- fBodyAccMag-meanFreq()              
- fBodyBodyAccJerkMag-mean()          
- fBodyBodyAccJerkMag-std()           
- fBodyBodyAccJerkMag-meanFreq()      
- fBodyBodyGyroMag-mean()             
- fBodyBodyGyroMag-std()              
- fBodyBodyGyroMag-meanFreq()         
- fBodyBodyGyroJerkMag-mean()         
- fBodyBodyGyroJerkMag-std()          
- fBodyBodyGyroJerkMag-meanFreq()   

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median 
filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Body and Gravity acceleration signals:
(i)    tBodyAcc-XYZ
(ii)   tGravityAcc-XYZ

Jerk signals:
(iii)  tBodyAccJerk-XYZ
(iv)   tBodyGyro-XYZ
(v)    tBodyGyroJerk-XYZ
Magnitude of Jerk signals:
(vi)   tBodyAccMag
(vii)  tGravityAccMag
(viii) tBodyAccJerkMag
(ix)   tBodyGyroMag
(x)    tBodyGyroJerkMag

Fast Fourier transform of some of the above signals:
(xi)   fBodyAcc-XYZ
(xii)  fBodyAccJerk-XYZ
(xiii) fBodyGyro-XYZ
(xiv)  fBodyAccMag
(xv)   fBodyAccJerkMag
(xvi)  fBodyGyroMag
(xvii) fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
Note: There are 7 angle variables.

Unlike the original dataset, the set of variables that were retained in this cleaned up version are: 
mean(): Mean value of the Signals
std(): Standard deviation of the Signals


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
<p>To start with, the first step of cleaning is to convert the activity labels to lower case.
As part of the project, out of the 561 features, only the measurements on the mean and standard deviation for each measurement is extracted. This is done using the grepl command in R. There are about 79 features which satify this criteria. Then, the training set of measurements are subsetted based on these features. The next step is to combine the information on the subjects, the measurements and the activities into a single dataframe. The activities and attributes are then labelled making it more understandable.<p>    
<p>The same procedure is repeated for the testing set as well. Furthermore, the training and testing datasets are merged into one.<p> 
<p>Finally the merged data is then made tidy using the dcast and melt fucntion in the reshape2 package in R. This is done so that final dataset shows the average of each variable for each activity and each subject.<p>
