#Problem 24

permute_up = function(x){
  k = 1
  for(i in 1:(nchar(x)-1)){
    if(substr(x, i, i)<substr(x,i+1,i+1)) k = i
  }
  #print(k)
  n=k+1
  for(i in n:nchar(x)){
    if(substr(x,i,i)<substr(x,n,n)&substr(x,k,k)<substr(x,i,i)) n = i
  }
 # print(n)
  out = paste(substr(x, 1, k-1), substr(x, n, n), substr(x, k+1, n-1), substr(x, k, k), substr(x, n+1, nchar(x)), sep="")
  #print(out)
  out = paste(substr(out, 1, k), paste(sort(unlist(strsplit(substr(out, k+1, nchar(out)), ""))), collapse = ""), sep="")
 # print(out)
  out
}


str = "0123456789"

for(i in 2:1000000){
  print(str)
  str = permute_up(str)
}

print(str)