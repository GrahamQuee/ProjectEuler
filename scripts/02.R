# Problem #2

a = 1
b = 2
ans = 0
while(b<=4000000){
  if(b%%2==0){
    ans=ans+b
  }
  c=b
  b=a+b
  a=c
}
print(ans)