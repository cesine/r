corr <- function(directory, threshold = 0) {
	debug <- FALSE
	# id <- 1:12
	id <- 1:332
	
	## Return a numeric vector of correlations for the monitors that meet the threshold requirement
	dataFromCities <- data.frame("id" = numeric(), "correlationBetweenNitrateAndSulfate" = numeric())
	
	for(i in id) {
	  threeDigitId <- if(i < 10) {
	      paste("00", i, sep="")
	    } else if (i < 100) {
	      paste("0", i, sep="")
	    } else{
	      i
	    }
	  ## 'directory' is a character vector of length 1 indicating the location of the CSV files
	  filename <- paste(directory, "/", threeDigitId, ".csv", sep = "")
	  if(debug) {
	    print(paste("Reading from file ", filename))
	  }
	  dataFromFile <- read.csv(filename)
	  
	  ## 'threshold' is a numeric vector of length 1 indicating the
	  ## number of completely observed observations (on all # variables) required
	  completeCases <- sum(complete.cases(dataFromFile))
	  if(completeCases < threshold) {
	    # print(paste("skip ", filename, " it has only ", completeCases))
	    next;
	  }

	  dataFromFile <- na.omit(dataFromFile)
	  if(debug) {
	  	print(paste("keeping ", filename))
	    print(head(dataFromFile, 2))
	  }
	  
	  # Compute the correlation between nitrate and sulfate; the default is 
	  correlation <- cor(dataFromFile$nitrate, dataFromFile$sulfate, method="pearson")
	  # correlation <- cor(dataFromFile["nitrate","sulfate"])
	  # correlation <- cor(dataFromFile$nitrate, dataFromFile$sulfate, use="pairwise.complete.obs")
	  if(debug) {
	  	print(correlation)
	  }

	  newrow <- c(as.numeric(i), as.numeric(correlation))
	  rownumber <- nrow(dataFromCities)+1
	  dataFromCities[rownumber, ] <- newrow
	}

	# Error in sample.int(length(x), size, replace, prob) : 
 	#  cannot take a sample larger than the population when 'replace = FALSE'
	dataFromCities$correlationBetweenNitrateAndSulfate
}

# source("corr.R")
# source("complete.R")
# cr <- corr("specdata", 150)
# head(cr)
# ## [1] -0.01896 -0.14051 -0.04390 -0.06816 -0.12351 -0.07589
# summary(cr)
# ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# ## -0.2110 -0.0500  0.0946  0.1250  0.2680  0.7630
# cr <- corr("specdata", 400)
# head(cr)
# ## [1] -0.01896 -0.04390 -0.06816 -0.07589  0.76313 -0.15783
# summary(cr)
# ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# ## -0.1760 -0.0311  0.1000  0.1400  0.2680  0.7630
# cr <- corr("specdata", 5000)
# summary(cr)
# ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# ## 
# length(cr)
# ## [1] 0
# cr <- corr("specdata")
# summary(cr)
# ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# ## -1.0000 -0.0528  0.1070  0.1370  0.2780  1.0000
# length(cr)
# ## [1] 323
