complete <- function(directory, id = 1:332) {
  debug <- FALSE
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used

  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  completeObservations <- data.frame("id" = numeric(), "nobs" = numeric()) 
  if(debug) {
    print(completeObservations)
  }

  for(i in id) {
    threeDigitId <- if(i < 10) {
        paste("00", i, sep="")
      } else if (i < 100) {
        paste("0", i, sep="")
      } else{
        i
      }
      filename <- paste(directory, "/", threeDigitId, ".csv", sep = "")
      if(debug) {
        print(paste("Reading from file ", filename))
      }
      dataFromFile <- read.csv(filename)
      completeCases <- sum(complete.cases(dataFromFile))
      if(debug) {
        print(completeCases)
      }
      newrow <- c(as.numeric(i), as.numeric(completeCases))
      rownumber <- nrow(completeObservations)+1
      completeObservations[rownumber, ] <- newrow
  }
  completeObservations
}
