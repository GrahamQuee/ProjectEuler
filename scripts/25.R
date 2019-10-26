#Problem 25
library(gmp)
a=as.bigz(1)
b=as.bigz(1)
x=as.bigz(1)
n=2
while(nchar(as.character(x))<1000){
  x=a+b
  n=n+1
  a=b
  b=x
}
print(n)
print(x)