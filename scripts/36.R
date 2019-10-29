#Problem 36

library(R.utils)

is_palendrome = function(x){
  x = as.character(x)
  if(nchar(x)<2) TRUE
  else if(substr(x,1,1)==substr(x,nchar(x),nchar(x))) is_palendrome(substr(x, 2, nchar(x)-1))
  else FALSE
}

pals = NULL
for(n in 1:999999){
 if(is_palendrome(n)) pals = c(pals, n)
}

total = 0
for(i in 1:length(pals)){
  if(is_palendrome(intToBin(pals[i]))) total = total + pals[i]
}

print(total)