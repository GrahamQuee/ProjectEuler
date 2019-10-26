#Problem 16
library(gmp)
str = as.character(as.bigz(2^1000))
sum = 0
for(i in 1:nchar(str)){
  print(as.numeric(substr(str,i,i)))
  sum = sum + as.numeric(substr(str, i, i))
  print(paste("sum:",sum))
}
print(sum)
