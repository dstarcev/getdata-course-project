### Prerequisites
* Script depends on dplyr package: http://cran.r-project.org/web/packages/dplyr/index.html
* Original data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Script assumes that dataset file is already downloaded and unpacked to "data" folder inside current working directory. So the "data" directory should contain following files:
  - 'features.txt': List of all features.
  - 'activity_labels.txt': Links the class labels with their activity name.
  - 'train/X_train.txt': Training set.
  - 'train/subject_train.txt': Training observation subjects.
  - 'train/y_train.txt': Training labels.
  - 'test/X_test.txt': Test set.
  - 'test/subject_test.txt': Test observation subjects.
  - 'test/y_test.txt': Test labels.

### How to run
1. Copy run_analysis.R to your working directory
2. Prepare dataset as described above
3. Execute command ```source("run_analysis.R")``` in console.

### How it works
Script does the following steps:<br>
1. Reads feature names and numbers from features.txt<br>
2. Filters features, so only those who contains mean() and std() values are kept.<br>
3. Normalizes names of features by replacing abbreviations with complete words, removing all non-word characters and formatting to lowerCamelCase.<br>
4. Reads activity labels from 'activity_labels.txt'<br>
5. Normalizes activity labels from UNDERSCORED_CAPS to Each Word Capitalized<br>
6. Reads and merges observations from "test" directory. It puts values from 'test/subject_test.txt' to first column (subject), values from 'test/y_test.txt' to second column (activity) and values from 'test/X_test.txt' as rest columns. Note, that script only reads X_test.txt columns corresponding to filtered feature numbers (from step 2). As result, a single data frame will be constructed from 3 files (using cbind).<br>
7. Reads and merges observations from "train" directory in the same way. <br>
8. Merges test and train observations to single dataset (using rbind).<br>
9. Sets feature names (from step 2) as column names for obtained dataset.<br>
10. Factorizes "subject" and "activity" columns. For activity it also sets labels obtained during step 5<br>
11. Calculates average of each variable for each activity and each subject, and saves it to 'data/averages.txt'<br>
12. Stores list with both original dataset and averages in "result" variable of R workspace.

### Extras
Script 'generateColumnDescriptions.R' contains function of the same name, which accepts resulting data.frame and returns "Variables" part of CodeBook.md by expanding each column name in more descriptive terms
