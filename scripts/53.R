#Problem 53
count = 0
for(n in 23:100){
  for(r in 4:n) if(choose(n,r)>1000000) count = count+1
}