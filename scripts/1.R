#Problem #1

ans = 0
for(i in 1:999){
  if(i%%3==0 | i%%5==0){
    ans = ans + i
    print(i)
  }
}
print(ans)