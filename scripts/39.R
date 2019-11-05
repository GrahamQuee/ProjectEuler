#problem 39
library(numbers)

score = rep(0, times=1000)
for(m in 2:31){
  cops = NULL
  for(n in 1:(m-1)){
    if(coprime(m,n)&(m-n)%%2!=0) cops = c(cops, n)
  }
  
  for(i in 1:length(cops)){
    n = cops[i]
    prim = c(m^2 - n^2, 2*m*n, m^2+n^2)
    k = 1
    x = prim
    while(sum(x)<=1000){
      score[sum(x)] = score[sum(x)]+1
      k = k+1
      x = k*prim
      }
  }
  
}

print(which.max(score))