#Problem 47
library(numbers)

n = 1
found = F
while(!found){
  n = n+1
  print(n)
  if(length(unique(primeFactors(n)))==4&length(unique(primeFactors(n+1)))==4&length(unique(primeFactors(n+2)))==4&length(unique(primeFactors(n+3)))==4) found = T
}
print(n)