#Problem 43
library(primes)

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

valid_pan = function(pan){
  primes = generate_primes(2,17)
  valid = TRUE
  for(i in 1:7){
    if(as.numeric(substr(pan, i+1, i+3))%%primes[i]!=0){
    valid = FALSE
    }
  }
  valid
}



pan = "1023456789"
sum = 0
while(as.numeric(pan)<9876543210){

  if(valid_pan(pan)){
    sum = sum + as.numeric(pan)
    print(pan)
    print(sum)
  }
  pan = permute_up(pan)
}
print(sum)
