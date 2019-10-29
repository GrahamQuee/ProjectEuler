#Problem 9 

for(a in 1:999){
  for(b in 1:999){
    c=sqrt(a^2+b^2)
    if(a+b+c==1000){
      print(a)
      print(b)
      print(c)
      print(a*b*c)
    }
  }
}