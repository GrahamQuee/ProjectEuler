#Problem 686

first_k_digits = function(k,n){
  floor(10^(n*log10(2)-floor(n*log10(2))+k-1))
}

n=12710
counter=45
while(counter<678910){
  n=n+1
  if(first_k_digits(3,n)==123){
    counter = counter+1
    print(counter)
  }
}