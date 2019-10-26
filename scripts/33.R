#Problem 33

#By analyzing the 4 possibilities of n/d = nc/dc, cn/cd, nc/cd, and cn/dc
# It can be shown that only nc/cd has a solution, and only when 1<=n<d<c<=9
library(gmp)

check = function(c,d,n){
  (10*n+c)/(10*c+d)==n/d
}

Ns = NULL
Ds = NULL
for(c in 3:9){
  for(d in 2:(c-1)){
    for(n in 1:(d-1)){
      if(check(c,d,n)) {
        Ns = c(Ns, n)
        Ds = c(Ds, d)
      }
    }
  }
}
n=1
d=1
for(i in 1:4){
  n = n*Ns[i]
  d = d*Ds[i]
}
d = d/gcd(n,d)
print(d)