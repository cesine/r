library("swirl")
swirl()
head(flags)
dim(flags)
class(flags)
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)
cls_vect <- sapply(flags, class)
class(cls_vect)
sum(flags$orange)
flag_colors <- flags[,11:17]
head(flag_colors)
View(flag_colors)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)
flag_shapes <- flags[, 19:23]
View(flag_shapes)
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes,range)
shape_mat
class(shape_mat)
unique(c(3,4,5,5,5,6,6,))
unique(c(3,4,5,5,5,6,6))
unique_vals <- lapply(flags, unique)
unique_vals
sapply(unique_vals, length)
supply(flags, unique)
spply(flags, unique)
sapply(flags, unique)
lapply(unique_vals, function(elem) elem[2])
# open minded apply (best for interactive exploration)
sapply(flags, unique)
# typed apply function will throw errors (best for scripting)
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
# group population summary per landmass
tapply(flags$population, flags$landmass, summary)
ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, 10)
tail(plants, 15)
# show most frequent values of columns (if categorical, otherwise show std dev etc)
summary(plants)
table(plants$Active_Growth_Period)
# show structure, factors preview of a data set
str(plants)


# more examples

x <- list(a = 1:5, b = rnorm(10))
lapply(x,mean)
sapply(x,mean)

# generate 5 random numbers
runif(5)

# generate a factorial of randum numbers between 0 and 10
x <- 1:4
lapply(x, runif, min= 0, max= 10)

# split data into months  (using month value) and get the mean of the groups
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c('Ozone', "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c('Ozone', "Solar.R", "Wind")], na.rm = TRUE))
