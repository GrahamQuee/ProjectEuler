#Problem 27
library(primes)
b_list = NULL
for(i in 1:999){
  if(is_prime(i)) b_list = c(b_list, i)
}  

max_streak = 0  
for(a in -999:999){
  for(b in b_list){
    
    f = function(x){
      x*x + a*x + b
    }
    
    prime = T
    streak = 0
    while(prime == T){
      prime = is_prime(f(streak))
      streak = streak + 1
      if(max_streak < streak){
        max_streak = streak
        max_a = a
        max_b = b
      }
    }
    
  }
}
print(max_a)
print(max_b)
print(max_a*max_b)