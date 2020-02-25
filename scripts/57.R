#Problem 57 - Square root Convergents
library('gmp')
top = function(x, y){
  2*y+x
}

bottom = function(x,y){
  y+x
}

a = 3
b = 2
count = 0
for(i in 2:1000){
  x = as.bigz(top(a,b))
  y = as.bigz(bottom(a,b))
  if(nchar(as.character(x))>nchar(as.character(y))) count = count + 1
  a = x
  b = y
}
