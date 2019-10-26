#Problem 21
library(numbers)

total=0
for(i in 2:9999){
  sum = sum(divisors(i))-i
  if(sum!=i & sum(divisors(sum))-sum ==i){
    total=total+i
  }
}
print(total)