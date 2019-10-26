#Problem 12

#triangle of n
tri=function(n){
  n*(n+1)/2
}

#prime factorization of n
fact=function(x){
  n=c()
  i=2
  r=x
  while(prod(n)!=x){
    if(!r%%i) {n=c(n,i);r=r/i;i=1}
    i=i+1
  }
  n
}

#factorial exponents
exps = function(x){
  out=NULL
  for(i in 2:max(x)){
    k=0
    for(j in 1:length(x)){
      if(x[j]==i){
        k = 1+k
      }
    }
    out=c(out,k)
    
  }
out
}

div = function(n){
  y=exps(fact(tri(n)))+1
  prod=1
  for(i in 1:length(y)){
    prod = prod*y[i]
  }
  prod
}
  

  n=2
  stop = div(n)
while(stop<500){
  n=n+1
  stop=div(n)
  print(n)

}
  print(n)














