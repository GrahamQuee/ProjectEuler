#Problem 46
library(primes)
n = 1
found = F
while(!found){
  n = n+2
  if(is_prime(n)) next
  found = T
  primes = generate_primes(0,n)
  for(i in 1:length(primes)){
    k = 1
    val = primes[i]+2*k^2
    if(val == n){
      found = F
      break
    }
    while(val<n){
      k = k+1
      val = primes[i]+2*k^2
      if(val == n){
        found = F
        break
      }
    }
    if(!found) break
  }
}
print(n)