#Problem37

library(primes)
left_truncatable = function(x){
  x = as.character(x)
  if(nchar(x)==1&is_prime(as.numeric(x))) TRUE
  else if(is_prime(as.numeric(x))) left_truncatable(substr(x, 2, nchar(x)))
  else FALSE
}

right_truncatable = function(x){
  x = as.character(x)
  if(nchar(x)==1&is_prime(as.numeric(x))) TRUE
  else if(is_prime(as.numeric(x))) right_truncatable(substr(x, 1, nchar(x)-1))
  else FALSE
}


primes = generate_primes(10, 1000000)
truncs = NULL
for(i in 1:length(primes)){
  print(primes[i])
  if(left_truncatable(primes[i])&right_truncatable(primes[i])) truncs = c(truncs, primes[i])
  if(length(truncs)==11) break
}
print(truncs)
print(sum(truncs))
