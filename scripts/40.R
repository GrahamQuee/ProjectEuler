#Problem 40

options(scipen = 99)

pole = NULL
for(i in 0:6){
 pole = c(pole, 10^i) 
}

store = NULL
counter = 0
k = 1
n = 1
while(k<8){
  if(pole[k]<=nchar(as.character(n))+counter){
    need = pole[k]-counter
    store = c(store, substr(as.character(n), need, need))
    k = k+1
  }
  counter = counter + nchar(as.character(n))
  n = n+1
}

print(prod(as.numeric(store)))