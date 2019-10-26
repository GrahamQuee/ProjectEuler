#Problem 30

sum_of_powers = function(x,n){
  x = as.character(x)
  y = 0
  for(i in 1:nchar(x)){
    y = y + as.numeric(substr(x, i, i))^n
  }
  y
}

total = 0
for(i in 2:355000){
  if(i == sum_of_powers(i,5)) total=total+i
}

print(total)