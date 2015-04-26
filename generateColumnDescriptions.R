generateColumnDescriptions <- function(frame) {
	getDescription <- function(column) {
		if (column == "subject") {
			"Subject who performed the activity"
		}
		else if (column == "activity") {
			"Performed activity"			
		}
		else {
			desc <- character()
			if (grepl("Mean", column)) {
				desc <- c(desc, "Mean")	
			}
			else if (grepl("Std", column)) {
				desc <- c(desc, "Standard deviation")	
			}
			
			if (grepl("Magnitude", column)) {
				desc <- c(desc, "of magnitude")
			}
			
			if (grepl("X", column)) {
				desc <- c(desc, "of X axis")	
			}
			else if (grepl("Y", column)) {
				desc <- c(desc, "of Y axis")		
			}
			else if (grepl("Z", column)) {
				desc <- c(desc, "of Z axis")		
			}
			
			if (grepl("Body", column)) {
				if (grepl("Jerk", column)) {
					desc <- c(desc, "of body Jerk")
				}
				else {
					desc <- c(desc, "of body acceleration")					
				}
			}
			else if (grepl("Gravity", column)) {
				desc <- c(desc, "of gravity acceleration")
			}
			
			if (grepl("time", column)) {
				desc <- c(desc, "time domain signal, captured at a constant 50Hz rate")
			}
			else if (grepl("frequency", column)) {
				desc <- c(desc, "frequency domain signal, produced by Fast Fourier Transform")				
			}	
			
			if (grepl("Accelerometer", column)) {
				desc <- c(desc, "measured by accelerometer")	
			}
			else if (grepl("Gyroscope", column)) {
				desc <- c(desc, "measured by gyroscope")	
			}
			
			paste(desc, collapse = " ")
		}
	}
	
	getFactorLevels <- function(column) {
		paste(paste("  * ", levels(frame[[column]]), sep = ""), collapse = "\n")
	}
	
	descriptions <- sapply(1:ncol(frame), function(columnIndex) {
		column <- colnames(frame)[columnIndex]
		desc <- paste0(columnIndex, ". **", column, "**<br>\n", "**",
					   class(frame[[columnIndex]]), "** ", getDescription(column), sep = "")
		if (is.factor(frame[[column]])) {
			desc <- paste(desc, "<br>", "Possible values:", getFactorLevels(column), sep = "\n")
		}
		desc
	}, USE.NAMES = FALSE)
	
	paste(descriptions, collapse = "\n")
}