#Problem 49
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

primes = generate_primes(1488,9999)
found = F
i = 0
while(!found){
  i = i+1
  permutes = primes[i]
  while(permute_up(permutes[length(permutes)])>permutes[length(permutes)]) permutes = c(permutes, as.numeric(permute_up(permutes[length(permutes)])))
  permutes = permutes[is_prime(permutes)]
  diffs = as.numeric(dist(permutes))
  if(length(unique(diffs[(2*diffs)%in%diffs]))!=0){
    add = unique(diffs[(2*diffs)%in%diffs])
    start = permutes[(permutes+add)%in%permutes&(permutes+2*add)%in%permutes]
    if(length(start)!=0&length(add)!=0){
      found = TRUE
    }else{
      start = NULL
      add = NULL
    }
  }
}
print(start)
print(add)

string = paste0(start, start+add, start+2*add)
print(string)