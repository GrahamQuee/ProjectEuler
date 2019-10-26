#Problem 14

collatz = function(n){
  if(n%%2==0) n/2
  else 3*n+1
}

largest = 0
value = 1
for(i in 2:999999){
  k=i
  n=1
  while(k!=1){
    k=collatz(k)
    n=n+1
  }
  if(largest<n){
    largest = n
    value = i
  }
}
