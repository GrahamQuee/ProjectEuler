#Problem 29

seq = NULL
for(a in 2:100){
  for(b in 2:100){
    x = a ^ b
    if(!(x %in% seq)) seq = c(seq, x)
  }
}

length(seq)