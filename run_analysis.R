runAnalysis <- function () {	
	# helper function for reading data from whitespace-separated csv w/o header
	readFile <- function(relativePath) {
		read.csv(file.path("data", relativePath), sep = "", header = FALSE)
	}	
	
	# hepler function for reading features
	readFeatures <- function() {
		# hepler function for feature name normalization
		normalizeFeatureNames <- function(name) {
			result <- as.character(name)
			result <- gsub("^t", "time", result)
			result <- gsub("^f", "frequency", result)
			result <- gsub("Acc", "Accelerometer", result)
			result <- gsub("Gyro", "Gyroscope", result)
			result <- gsub("Mag", "Magnitude", result)
			result <- gsub("BodyBody", "Body", result)
			result <- gsub("\\-std\\(\\)(\\-)?", "Std", result)
			result <- gsub("\\-mean\\(\\)(\\-)?", "Mean", result)
			result
		}
		
		allFeatures <- readFile("features.txt")
		colnames(allFeatures) <- c("id", "name")
		filteredFeatures <- allFeatures[grep("std|mean\\(\\)", allFeatures$name),]		
		filteredFeatures$name <- normalizeFeatureNames(filteredFeatures$name)	
		filteredFeatures
	}
	
	# helper function for reading activity labels
	readActivityLabels <- function () {
		# function for camel case
		normalizeActivityLabels <- function(x) {
			capitalize <- function(x) {
				result <- paste0(toupper(substring(x, 1, 1)), substring(x, 2, nchar(x)))
			}
			
			words <- strsplit(tolower(as.character(x)), "_")
			sapply(words, function(x) paste(capitalize(x), collapse = " "))			
		}
		
		activityLabels <- readFile("activity_labels.txt")
		colnames(activityLabels) <- c("id", "name")
		activityLabels$name <- normalizeActivityLabels(activityLabels$name)
		activityLabels
	}	
	
	# helper function for reading and merging observations from subject_*, X_* and Y_* files
	readObservations <- function(dataType, featuresToRead) {
		buildFilePath <- function(setName) {
			paste0(dataType, "/", setName, "_", dataType, ".txt")
		}
		
		X <- readFile(buildFilePath("X"))[,featuresToRead]
		Y <- readFile(buildFilePath("Y"))
		subject <- readFile(buildFilePath("subject"))
		cbind(subject, Y, X)
	}
	
	# reading data
	features <- readFeatures()
	activityLabels <- readActivityLabels()	
	observations <- rbind(
		readObservations("test", features$id),
		readObservations("train", features$id))

	# setting column names
	colnames(observations) <- c("subject", "activity", features$name)
	
	# factorizing subject and activity columns
	observations$subject <- as.factor(observations$subject)
	observations$activity <- as.factor(observations$activity)
	levels(observations$activity) <- activityLabels$name
	
	# calculating average of each variable for each activity and each subject
	library(dplyr)
	observationsMean <- observations %>% group_by(subject, activity) %>% summarise_each(funs(mean))
	
	write.table(result$means, file = "data/averages.txt", append = FALSE, row.names = FALSE)
	list(data = observations, means = observationsMean)
}

result <- runAnalysis()
rm(runAnalysis)
