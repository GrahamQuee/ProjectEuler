#Problem 51 - Prime Digit Replacement
library(primes)
primes = generate_primes(100000,999999)

tb_primes = NULL
for(i in 1:length(primes)){
  if(max(table(strsplit(as.character(primes[i]), "")[[1]][1:5]))>=3) tb_primes = rbind(tb_primes, strsplit(as.character(primes[i]), "")[[1]])
}

found = F
i = 1
while(!found){
  base = tb_primes[i,]
  pos = which(base == names(sort(table(base), decreasing=TRUE)[1]))
  count = 0
  for(j in 0:9){
    base[pos] = j
    if(as.numeric(paste0(base, collapse=""))>1000 && is_prime(as.numeric(paste0(base, collapse="")))){
      count = count + 1
      #print(as.numeric(paste0(base, collapse="")))
    }
  }
  if(count == 8) found = T
  i=i+1
}

as.numeric(paste0(tb_primes[i-1,], collapse=""))