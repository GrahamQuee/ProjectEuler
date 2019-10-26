#Problem 23
library(numbers)

buildAbs=T
if(buildAbs){
abs = NULL
for(i in 1:28123){
  if(2*i<sum(divisors(i))) abs = c(abs, i)
}
}

is_abs_sum = function(x){
  if(x<12) return(F)
  for(i in 1:length(abs[which(abs<=x)])){
    if((x-abs[i]) %in% abs[which(abs<=x)]){
      return(T)
    }
  }
  return(F)
}

sum = 0
for(i in 1:28123){
  print(i)
  if(!is_abs_sum(i)) sum = sum + i
}
print(sum)


