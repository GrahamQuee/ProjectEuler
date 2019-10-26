#Problem 35
library(primes)

rotate = function(x){
  x = as.character(x)
  x = paste0(substr(x, 2, nchar(x)), substr(x, 1,1))
  return(x)
}

list_rotations = function(x){
  list = NULL
  while(!(as.numeric(x)%in%list)){
    list = c(list,as.numeric(x))
    x = rotate(x)
  }
  list
}

pri = generate_primes(0,999999)

count = 0
while(length(pri)>0){
  print(length(pri))
  list = list_rotations(pri[1])
  allprime = TRUE
  for(j in 1:length(list)){
    if(!is_prime(list[j])) allprime = FALSE
  }
  if(allprime) count = count + length(list)
  pri = pri[!(pri%in%list)]
}
print(count)