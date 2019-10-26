#Problem 28
total = 1
val = 1
inc = 2
n = 1001

while(inc<n){
  for(i in 1:4){
    val = val+inc
    total = total+val
  }
  inc = inc+2
}

print(total)