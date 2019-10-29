#Problem #5 

#Slow way
if(F){
stop = FALSE
n=1
while(stop == FALSE){
  n=n+1
  print(n)
  stop=TRUE
  for(i in 1:20){
    if(n%%i!=0){
      stop=FALSE
    }
  }
}
print(n)
}

#Fast way
x=2^4*3^2*5*7*11*13*17*19
print(x)

