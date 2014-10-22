pollutantmean <- function(directory, pollutant, id = 1:332) {
  debug <- FALSE
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)

  pollutantData <- numeric(0);
  
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
    if(debug) {
      print(summary(dataFromFile))
    }
    pollutantData <- as.vector(rbind(pollutantData, dataFromFile[pollutant])) 
  }
  pollutantData <- na.omit(pollutantData)
  if(debug) {
    print(paste(" Summary of the ", pollutant, " data"))
    print(summary(pollutantData))
  }

  # print(dim(pollutantData))
  # mean(pollutantData[pollutant])
  meanOfPolutatnInTheseCities <- as.numeric(mean(pollutantData[,1]))
  # numeric(format(round(meanOfPolutatnInTheseCities, 3), nsmall = 3))
  round(meanOfPolutatnInTheseCities, 3)
}
