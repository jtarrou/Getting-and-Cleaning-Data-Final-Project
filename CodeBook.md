etting and Cleaning Data Course Project Code Book 2
Calrification of Variables and Data

The project concerns data from the following experiment
Human Activity Recognition Using Smartphones

The data for this project can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

Source:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 

The activities are as follows: 
 activity_number      activity_name
           1            WALKING
           2   WALKING_UPSTAIRS
           3 WALKING_DOWNSTAIRS
           4            SITTING
           5           STANDING
           6             LAYING

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope - **labeled "Gyro" in the Varaiables
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 

Note: Subjects are listed by number 1-30

Experiment Info:
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two 
sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which 
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz 
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
and frequency domain. 

Variables: **see below for adjustments made to data set
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

FOR CLARIFICATION The Variables have been changed as follows:
[1] "activity"                                
 [2] "subject_number"                          
 [3] "time.body.accel.mean...X"                
 [4] "time.body.accel.mean...Y"                
 [5] "time.body.accel.mean...Z"                
 [6] "time.body.accel.std_Dev...X"             
 [7] "time.body.accel.std_Dev...Y"             
 [8] "time.body.accel.std_Dev...Z"             
 [9] "timeGravity.accel.mean...X"              
[10] "timeGravity.accel.mean...Y"              
[11] "timeGravity.accel.mean...Z"              
[12] "timeGravity.accel.std_Dev...X"           
[13] "timeGravity.accel.std_Dev...Y"           
[14] "timeGravity.accel.std_Dev...Z"           
[15] "time.body.accel.jerk.mean...X"           
[16] "time.body.accel.jerk.mean...Y"           
[17] "time.body.accel.jerk.mean...Z"           
[18] "time.body.accel.jerk.std_Dev...X"        
[19] "time.body.accel.jerk.std_Dev...Y"        
[20] "time.body.accel.jerk.std_Dev...Z"        
[21] "time.body.gyro.mean...X"                 
[22] "time.body.gyro.mean...Y"                 
[23] "time.body.gyro.mean...Z"                 
[24] "time.body.gyro.std_Dev...X"              
[25] "time.body.gyro.std_Dev...Y"              
[26] "time.body.gyro.std_Dev...Z"              
[27] "time.body.gyro.jerk.mean...X"            
[28] "time.body.gyro.jerk.mean...Y"            
[29] "time.body.gyro.jerk.mean...Z"            
[30] "time.body.gyro.jerk.std_Dev...X"         
[31] "time.body.gyro.jerk.std_Dev...Y"         
[32] "time.body.gyro.jerk.std_Dev...Z"         
[33] "time.body.accel.mag.mean.."              
[34] "time.body.accel.mag.std_Dev.."           
[35] "timeGravity.accel.mag.mean.."            
[36] "timeGravity.accel.mag.std_Dev.."         
[37] "time.body.accel.jerk.mag.mean.."         
[38] "time.body.accel.jerk.mag.std_Dev.."      
[39] "time.body.gyro.mag.mean.."               
[40] "time.body.gyro.mag.std_Dev.."            
[41] "time.body.gyro.jerk.mag.mean.."          
[42] "time.body.gyro.jerk.mag.std_Dev.."       
[43] "freq.body.accel.mean...X"                
[44] "freq.body.accel.mean...Y"                
[45] "freq.body.accel.mean...Z"                
[46] "freq.body.accel.std_Dev...X"             
[47] "freq.body.accel.std_Dev...Y"             
[48] "freq.body.accel.std_Dev...Z"             
[49] "freq.body.accel.meanFreq...X"            
[50] "freq.body.accel.meanFreq...Y"            
[51] "freq.body.accel.meanFreq...Z"            
[52] "freq.body.accel.jerk.mean...X"           
[53] "freq.body.accel.jerk.mean...Y"           
[54] "freq.body.accel.jerk.mean...Z"           
[55] "freq.body.accel.jerk.std_Dev...X"        
[56] "freq.body.accel.jerk.std_Dev...Y"        
[57] "freq.body.accel.jerk.std_Dev...Z"        
[58] "freq.body.accel.jerk.meanFreq...X"       
[59] "freq.body.accel.jerk.meanFreq...Y"       
[60] "freq.body.accel.jerk.meanFreq...Z"       
[61] "freq.body.gyro.mean...X"                 
[62] "freq.body.gyro.mean...Y"                 
[63] "freq.body.gyro.mean...Z"                 
[64] "freq.body.gyro.std_Dev...X"              
[65] "freq.body.gyro.std_Dev...Y"              
[66] "freq.body.gyro.std_Dev...Z"              
[67] "freq.body.gyro.meanFreq...X"             
[68] "freq.body.gyro.meanFreq...Y"             
[69] "freq.body.gyro.meanFreq...Z"             
[70] "freq.body.accel.mag.mean.."              
[71] "freq.body.accel.mag.std_Dev.."           
[72] "freq.body.accel.mag.meanFreq.."          
[73] "freq.body.body.accel.jerk.mag.mean.."    
[74] "freq.body.body.accel.jerk.mag.std_Dev.." 
[75] "freq.body.body.accel.jerk.mag.meanFreq.."
[76] "freq.body.body.gyro.mag.mean.."          
[77] "freq.body.body.gyro.mag.std_Dev.."       
[78] "freq.body.body.gyro.mag.meanFreq.."      
[79] "freq.body.body.gyro.jerk.mag.mean.."     
[80] "freq.body.body.gyro.jerk.mag.std_Dev.."  
[81] "freq.body.body.gyro.jerk.mag.meanFreq.." 
[82] "activity_number" 
