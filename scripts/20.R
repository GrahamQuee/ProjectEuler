#Problem 20
library(gmp)

fact = as.bigz(1)
for(i in 1:100){
  fact = fact*i
}
str = as.character(fact)
sum = 0
for(i in 1:nchar(str)){
  sum = sum + as.numeric(substr(str, i, i))
}
print(sum)