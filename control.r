
# an interesting if structure in R
# when an if is being used to assign a value to y
y <- if(x > 3){
  10
} else {
  0
}

#### Traditional syntax is okay too
if(x > 3){
  y <- 10
}else{
  y <- 0
}

x <- c("a","b", "c", "d")

print("the index here is the element itself")
for(letter in x){
  print(letter)
}

#### Traditional syntax is okay too
for(i in 1:4){
  print(x[i])
}

print("using seq_along() which makes an integer that is the length of the variable")
for(i in seq_along(x)) {
  print(x[i])
}


for(i in 1:4) print(x[i])

#### Loop with no need for the values
for(i in 1:10) {
  print(i)
}


x <- matrix(1:6, 2,3)

# print rows in a matrix
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}

# print columns in a matrix
for(i in seq_len(ncol(x))) {
  print("col ")
  print(i)
  for(j in seq_len(nrow(x))) {
    print(x[j,i])
  }
}

for(i in 1:100){
  if (i <= 20){
    next # skip this itteration like continue
  }
  print(i)
}

##### While loops

count <- 0
while(count < 10){
  print(count)
  count <- count +1
}

# random walk towards 3 or 10
z  <- 5
while(z >= 3 && z <=10){
  print(z)
  coin <- rbinom(1,1,0.5)
  
  if(coin == 1){
    z <- z+1 
  } else {
    z <- z-1
  }
}

##### Repeat loop

# optimze until you are close to a convergance (not all algorythms converge)
x0 <- 1
tol <- 1e-8 #tollerance, lower tollerance will run longer

repeat {
  x1 <- computeEstimate()
  
  if(abs(x1 - x0) < tol){
    break
  }else {
    x0 <- x1
  }
}

