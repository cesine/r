# to execute on commandline:
# $ Rscript functions.r


add2 <- function(x,y){
  x + y
}
x <- 1:20

# gets all members of an array which are above 3
above3 <- function(x, n){
  use <- x > 3
  x[use]
}
# throws no error because n was not needed it is not "evaluated"
above3(x)


# gets all members of an array which are above n
aboveNoDefault <- function(x, n){
  use <- x > n
  x[use]
}
# should throw an error because n was needed and not passed
aboveNoDefault(x)
# Error in aboveNoDefault(x) : argument "n" is missing, with no default
aboveNoDefault(x, 5)



# gets all members of an array which are above n (use 10 by default)
above <- function(x, n = 10){
  use <- x > n
  x[use]
}
# uses 10 by default
above(x)
# accepts an optional value
above(x, 5)


# calculate the mean of each column
columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)         # initialize a vector of 0s that is the length of incoming  y
  for(i in 1:nc){              #  eg 1:20
    cat("column", i, "\n") # print number of column we are on
    # print(y[, i])
    means[i] <- mean(y[ , i], na.rm = removeNA)  # use the mean function to get the mean of the column, removing npas is controlled by the user
  }
  means # last expression is returned 
}

columnmean(airquality, FALSE)
columnmean(airquality, TRUE)
columnmean(airquality)

# Functions have the class "function"
class(columnmean)

# You can find out the arguments and their defaults
formals(columnmean)
formals(mean)


# Arguments can be matched by name, or by position
mydata <- rnorm(100)
sd(mydata)
formals(sd)

# you can see that there are 2 arguments in here
sd(x=mydata)
sd(y=mydata)
# Error in sd(y = mydata) : unused argument (y = mydata)
sd(mydata, TRUE)
sd(x=mydata, na.rm = FALSE)
sd(na.rm = FALSE, x=mydata) # confusing but can be reordered since they are named
sd(na.rm = FALSE, mydata) # confusing but can be reordered, and some unamed


args(lm)
lm(data= mydata, y - x, model =FALSE, 1:100) # super confusing but possible, and helpful if you cant remember the order of arguemnts eg in plotting

# Extending functions and generic functions which dispatch methods for different data
args(paste)
paste("a","b","c", sep ="SEPERATTOR")
paste("a","b","c", se ="thiswill come out as another arugment, not a seperator")# interesting error that is hard to spot
args(cat)
myplot <- function(x, y, type = "1", ...){
  plot(x, y, type=type, ...) 
}

# In addition to functions see also the apply family which lets you apply functions to elements in a data set

