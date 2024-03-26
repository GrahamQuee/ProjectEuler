#Problem 61 - Cyclical figurate numbers

#sequence defns
triangle = function(n){
  n*(n+1)/2
}

square = function(n){
  n*n
}

pentagon = function(n){
  n*(3*n-1)/2
}

hexagon = function(n){
  n*(2*n-1)
}

heptagon = function(n){
  n*(5*n-3)/2
}

octagon = function(n){
  n*(3*n-2) 
}

#produce 4 digit subsequences
produce = function(f){
store = NULL
i = 1
while(f(i)<10000){
  if(f(i)>999) store = c(store,f(i))
  i = i+1
}
store = bind_cols(x = substr(store, 1, 2),y = substr(store, 3, 4))
}

#generate list of  4 digit subsequences
gener = function(f){
  list(tri = f(triangle), sqr = f(square), pen = f(pentagon), hex = f(hexagon), hep = f(heptagon), oct = f(octagon))
}

candidates = gener(produce)
for(i in 1:length(candidates)){
  names(candidates[[i]]) = c(paste0("x", i), paste0("y", i))
}

#calculate permutations for processing of candidates
permute_up = function(x){
  k = 1
  for(i in 1:(nchar(x)-1)){
    if(substr(x, i, i)<substr(x,i+1,i+1)) k = i
  }
  #print(k)
  n=k+1
  for(i in n:nchar(x)){
    if(substr(x,i,i)<substr(x,n,n)&substr(x,k,k)<substr(x,i,i)) n = i
  }
  # print(n)
  out = paste(substr(x, 1, k-1), substr(x, n, n), substr(x, k+1, n-1), substr(x, k, k), substr(x, n+1, nchar(x)), sep="")
  #print(out)
  out = paste(substr(out, 1, k), paste(sort(unlist(strsplit(substr(out, k+1, nchar(out)), ""))), collapse = ""), sep="")
  # print(out)
  out
}

#seive
perm_str = "12345"
found = F
while(!found){
  print(perm_str)
  stack = candidates[[6]]
  for(i in 1:nchar(perm_str)){
    x = as.numeric(substr(perm_str, i, i))
    next_one = candidates[[x]]
    stack = left_join(stack, candidates[[x]], by = setNames(paste0("x",x),names(stack[,ncol(stack)])))
    stack = stack[!is.na(stack[,ncol(stack)]),]
    if(nrow(stack)==0) break
  }
  
  if(nrow(stack)!=0) {
    found = T %in% c(stack[,1] == stack[,7])
    gem = stack[stack[,1] == stack[,7],]
  }
  last_perm = perm_str
  perm_str = permute_up(perm_str)
}
gem = gem[,-ncol(gem)]
answer = sum(100*as.numeric(gem) + as.numeric(gem))
answer
