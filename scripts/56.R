#Problem 56 - Powerful digit sum
require('gmp')
options(scipen=999)

max_sum = 0
max_a = 0
max_b = 0
for(i in 1:99){
  for(j in 1:99){
    a = as.bigz(i)
    b = as.bigz(j)
    #print(num)
    csum = sum(as.numeric(strsplit(as.character(a^b), split = "")[[1]]))
    if(csum > max_sum){
      print(a)
      print(b)
      print(csum)
      max_sum = csum
      max_a = a
      max_b = b
    }
  }
}
print(paste0("a: ", max_a))
print(paste0("b: ", max_b))
print(max_sum)