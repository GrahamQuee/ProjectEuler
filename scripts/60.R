#Problem 60 - Prime Pair Sets
library(primes)
primes = generate_primes(3,10000)

check = function(x, y){
  is_prime(as.integer(paste0(x,y)))&&is_prime(as.integer(paste0(y,x)))
}

reduce = function(prime, list1){
  list2 = NULL
  list1 = list1[list1!= prime]
  for(i in 1:length(list1)){
    if(check(prime, list1[i])) list2 = c(list2, list1[i])
  }
  list2
}

found = F
i = 1
while(!found){
  seed = primes[i]
  list1 = reduce(seed, primes)
  if(length(list1)>0){
  for(a in 1:length(list1)){
    seed[2] = list1[a]
    list2 = reduce(seed[2], list1)
    if(length(list2>0)){
      for(b in 1:length(list2)){
        seed[3] = list2[b]
        list3 = reduce(seed[3], list2)
        if(length(list3>0)){
          for(c in 1:length(list3)){
            seed[4] = list3[c]
            list4 = reduce(seed[4], list3)
            if(length(list4)>0){
              seed[5] = list4[1]
              found = T
            }
            if(found) break
          }
        }
        if(found) break
        }
    }
    if(found) break
  }
  }
  i = i+1
}

print(seed)
sum(seed)