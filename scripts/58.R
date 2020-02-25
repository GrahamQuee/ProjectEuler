#Problem 58 - Spiral Primes
library(primes)
val = 1
inc = 2
stop = F
p_count = 0
total = 1

while(!stop){
  for(i in 1:4){
    val = val+inc
    if(is_prime(val)) p_count = p_count + 1
  }
  total = total+4
  if(p_count/total < 0.1) stop = T
  inc = inc+2
}

print(inc-1)