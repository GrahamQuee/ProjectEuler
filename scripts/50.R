#Problem 50

library(primes)
primes = generate_primes(0,50000)
c_primes = cumsum(primes)

max_j = 0
max_i = 0
for(i in 1:length(c_primes)){
  for(j in i:length(c_primes)){
    if((c_primes[j]-c_primes[i])<1000000&is_prime(c_primes[j]-c_primes[i])&(max_j-max_i)<(j-i)){
      max_j = j
      max_i = i
    }
  }
}
print(c_primes[max_j]-c_primes[max_i])
