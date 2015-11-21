# getting-and-cleaning-data
Repository for the course project for "Getting and Cleaning Data".

This repo contains the following files:
- result.txt: the tidy data set
- run_analysis: the skript that creates the tidy data set from the raw data
- CodeBook.md: the codebook describing the data and the variables
- getting-and-cleaning-data.Rproj: the data for the Rstudio-project

## How to run the script "run_analysis.R"

The skript does not assume that you have the raw data in your working directory. It will download and unzip the raw data automatically. Please comment these lines if you want to copy the raw data manually (downloading may take a while).

## How the script "run_analysis.R" works
The script consists of four parts:
- Download and unzip the raw data and read the tables into R
- Merge the tables into data frames separately for the training and test sets
- Create the first, tidy dataset
- Create the second dataset with the average of each variable for each activity and each subject

### Read tables into R
This is pretty straightforward. The raw data is unzipped using the unzip() function and the txt-files are read using the read.table() function.

### Merge the tables
Column names are created for the X_test / X_train tables from the features.txt file. These names satisfy point 4 of the assignment "Appropriately labels the data set with descriptive variable names."

The tables are merged using the data.frame() function.

### Create the first, tidy dataset
The training and test datasets are merged using the bind_rows() function, then only variables containing the strings "mean" or "std" in their name are selected and the acitivity variable is modified so that it contains a descriptive names fir the activities (points 1, 2, and 4 of the assignment).

### Create the second dataset
The first dataset is grouped by the variables activity and subject and the summarise_each() function is used to calculate the averages for each group.

This dataset is written in the file "result.txt".
