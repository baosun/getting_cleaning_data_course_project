Data set: Human Activity Recognition Using Smartphones - mean and standard deviation
Version 1.0
prepared by Susan Sun

The raw data: Human Activity Recognition Using Smartphones data set from UCI repository. The original data set includes 28 .txt files. The details of the orignal data set can be found from CodeBook.md.  
10 of the 28 files are used to produce the final tidy data. The 10 files are uploaded under UCI branch of this repo. 

The outcome: tidyData.txt. tidyData.txt is a file contains the average mean and standard deviation of each variable for each activity and each subject. Each row represents the signals of one vonlunteer's one activity.

The code script: run_analysis.R  
The script was produced in RStudio version 0.99.483. Operating system: windows 8.
The script is capable ot product same result after 10 times iteration.

Step 1: download raw data and run_analysis.R to your work directory
Step 2: open run_analysis.R from RStudio. In row 5, setwd("D:/R/data/data/UCI/HAR"), modify the address to be the address of your own work directory.
Step 3: run the script.
Step 4: the final tidyData.txt file can be found in the root of your work directory

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


