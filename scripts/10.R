#Problem 10
library(primes)
sum=0
n=1
while(n<2000000){
  if(is_prime(n)){
    sum=sum+n
  }
  n=n+1
}
print(sum)