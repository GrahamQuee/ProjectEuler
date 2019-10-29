#Problem 4

palindromecheck = function(y){
  if(nchar(y)<=1) return(TRUE)
  else if(substr(y, 1, 1)!=substr(y,nchar(y), nchar(y))) return(FALSE)
  else if(substr(y, 1, 1)==substr(y,nchar(y), nchar(y))) return(palindromecheck(substr(y,2,nchar(y)-1)))
}

y=0
for(i in 999:500){
  for(j in 999:500){
    x = as.character(i*j)
    if(palindromecheck(x)&y<i*j){
      print(x)
      y=i*j
    }
  }
}