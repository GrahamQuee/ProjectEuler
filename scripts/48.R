#Problem 48

mod = 10000000000
sum = 0
for(n in 1:1000){
  val = 1
  for(k in 1:n) val = (val*n)%%mod
  sum = (sum + val)%%mod
}
print(sum)