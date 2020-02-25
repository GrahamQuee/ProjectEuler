#Problem 52
n = 1
found = F
while(!found){
  n = n + 1
  same = T
  i=2
  while(same == T & i<7){
    m = i*n
    same = paste(sort(unlist(strsplit(as.character(n), ""))), collapse = "") == paste(sort(unlist(strsplit(as.character(m), ""))), collapse = "")
    i=i+1
  }
  if(same == T) found = T
}