#Problem #3

n = 600851475143
for(i in 2:ceiling(sqrt(n)+1)){
  while(n%%i==0){
    n=n/i
  }
  if(n==1){
    break
  }
}