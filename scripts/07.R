library(primes)

done=FALSE
i=1
n=0
while(done==FALSE){
  i=i+1
  if(is_prime(i)){
    n=n+1
  }
  if(n == 10001){
    done=TRUE
  }
}
print(i)