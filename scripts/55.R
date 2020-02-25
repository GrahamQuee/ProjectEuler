#Problem 55 - Lychrel Numbers
require('gmp')
options(scipen=999)

palindromecheck = function(y){
  if(nchar(y)<=1) return(TRUE)
  else if(substr(y, 1, 1)!=substr(y,nchar(y), nchar(y))) return(FALSE)
  else if(substr(y, 1, 1)==substr(y,nchar(y), nchar(y))) return(palindromecheck(substr(y,2,nchar(y)-1)))
}

reverse = function(x){
  as.numeric(paste(rev(unlist(strsplit(as.character(x), ""))), collapse=""))
}

lychrel = function(x){
  stop = FALSE
  i=0
  while(!stop&&i<50){
    i=i+1
    x = x + reverse(x)
    stop = palindromecheck(as.character(x))
  }
  return(!stop)
}

n = 1
count = 0
while(n<10000){
  if(lychrel(n)) count = count + 1 
  n = n+1
}

count