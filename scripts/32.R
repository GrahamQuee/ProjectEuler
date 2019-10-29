#Problem 32

is_pandigital = function(n){
  n = paste(sort(unlist(strsplit(as.character(n), ""))), collapse = "")
  n == "123456789"
  }

prods = NULL
for(n in 10:99){
  for(m in 100:999){
    if(is_pandigital(paste0(n,m,n*m))) prods = c(prods, n*m)
  }
}

for(n in 2:9){
  for(m in 1000:9999){
    if(is_pandigital(paste0(n,m,n*m))) prods = c(prods, n*m)
  }
}

total = sum(unique(prods))
print(total)

