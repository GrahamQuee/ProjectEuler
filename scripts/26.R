max_n = 0
max_d = 0
for(d in 2:999){
  print(d)
  D = d
  while(d%%5==0) d = d/5
  while(d%%2==0) d = d/2
  if(d==1) next
  n = 1
  val = 10
  while(val%%d!=1){
    val = val%%d
    val = val*10
    n = n+1
  }
  if(max_n<n){
    max_d = D
    max_n = n
  }
} 

print(max_n)
print(max_d)