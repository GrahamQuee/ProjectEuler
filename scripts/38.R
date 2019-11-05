#Problem38

f = function(x,n){
  out = ""
  for(i in 1:n){
    out = paste0(out, x*i)
  }
  out
}

is_pandigital = function(n){
  n = paste(sort(unlist(strsplit(as.character(n), ""))), collapse = "")
  n == "123456789"
}

pans = NULL
for(n in 2:9){
  x = ""
  i = 1
  while(nchar(x)<10){
    x = f(i,n)
    if(is_pandigital(x)) pans = c(pans, x)
    i = i + 1
  }
}

print(max(as.numeric(pans)))