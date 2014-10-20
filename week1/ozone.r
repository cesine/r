getwd()
dir
dir()
read.csv("mysteryData.csv")
mysteryData <- read.csv("mysteryData.csv")
mysteryData
summary(mysteryData)
str(mysteryData)
x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x,y)
x <- list(2, "a", "b", TRUE)
x[[2]]
x <- 1:4
y <- 2
x+y
x <- c(3, 5, 1, 10, 12, 6)
x[x <6] <- 0
x
x <- c(3, 5, 1, 10, 12, 6)
x[x %in% 1:5] <- 0
x
names(mysteryData)
head(mysteryData,2)
str(mysteryData)
tail(mysteryData,2)
mysteryData[47]
head(mysteryData,47)
mysteryData$Ozone
mysteryData$Ozone[NA]
mysteryData$Ozone
sum(is.na(mysteryData$zone))
sum(is.na(mysteryData$Ozone))
summary(mysteryData$Ozone)
tapply(flags$animate, flags$landmass, mean)
tapply(mysteryData$Ozone, mysteryData$Ozone, mean)
ozoneTemp <- c(mysteryData$Ozone, mysteryData$Temp)
ozoneTemp
ozoneTemp <- list(mysteryData$Ozone, mysteryData$Temp)
ozoneTemp
x
x <- mysteryData(Ozone >31)
mysteryData[[Ozone >31]]
mysteryData[[Ozone >31, exact =FALSE]]
mysteryData[["Ozone" >31, exact =FALSE]]
mysteryData
mysteryData[["Ozone" >31, exact =FALSE]]
sapply(mysteryData, function(row) row$Ozone >31 )
sapply(mysteryData, function(row) Ozone >31 )
sapply(mysteryData, function(OZone) Ozone >31 )
sapply(mysteryData, function(Ozone) Ozone >31 )
sapply(mysteryData, function(value) value >31 )
above31 <- sapply(mysteryData, function(value) value >31 )
above90 <- sapply(mysteryData, function(value value > 90))
above90 <- sapply(mysteryData, function(value) value > 90)
above90
mysteryData[!above31]
mysteryData
subset(mysteryData, OZone >31)
subset(mysteryData, Ozone >31)
subset(mysteryData, Ozone >31& Temp >90)
ozoneTemp <- subset(mysteryData, Ozone >31& Temp >90)
summary(ozoneTemp)
subset(mysteryData, Month = 6)
subset(mysteryData, Month == 6)
summary(subset(mysteryData, Month == 6))
summary(subset(mysteryData, Month == 5))
x <- 1:4
y <- 2:3
x+y
x
y
head(quiz2)
head(mysteryData)
head(mysteryData, 2)
tail(mysteryData,2)
mysteryData[47]
mysteryData$Ozone[47]
is.na(mysteryData$Ozone)
sum(is.na(mysteryData$Ozone))
mean(!is.na(mysteryData$Ozone))
!iz.na(mysteryData$Ozone)
!is.na(mysteryData$Ozone)
mean(mysteryData$Ozone)
good <- complete.cases(mysteryData)
good
mysteryData[good]
mysteryData[good,]
summary(mysteryData[good,])
subset(mysteryData, Ozone>31)
subset(mysteryData, Ozone>31 & Temp  >90)
mean(subset(mysteryData, Ozone>31 & Temp  >90))
summary(subset(mysteryData, Ozone>31 & Temp  >90))
summary(subset(mysteryData, Month == 6))
summary(subset(mysteryData, Month == 5))
x <- list(2, "a", "b", TRUE)
class(x)
class( x[[1]])
x[[1]]
x <- 1:4
y <- 2:3
class(x+y)
head(mysteryData,2)
tail(mysteryData, 2)
mysteryData$Ozone[47]
is.na(mysteryData$Ozone)
sum(is.na(mysteryData$Ozone))
good <- complete.cases(mysteryData)
mysteryData[good,]
nrows(mysteryData[good,])
str(mysteryData[good,])
mean(mysteryData[good,])
summary(mysteryData[good,])
subset(mysteryData, Ozone>31 & Temp>90)
summary(subset(mysteryData, Ozone>31 & Temp>90))
summary(subset(mysteryData, Month == 6))
summary(subset(mysteryData, Month == 5))
