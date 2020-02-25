#Problem 54 - Poker Hands

deals = read.table("poker_hands.txt", header = F, sep = " ")

tran = function(x){
  out = NULL
  for(i in 1:5){
    out = cbind(out, unlist(strsplit(as.character(x[[i]]), "")))
  }
  out[out=="T"] = 10
  out[out=="J"] = 11
  out[out=="Q"] = 12
  out[out=="K"] = 13
  out[out=="A"] = 14
  out
}

high_card = function(x){
  max(as.numeric(x[1,]))
}

one_pair = function(x){
  if(length(which(tabulate(as.numeric(x[1,]))==2))==1) return(which(tabulate(as.numeric(x[1,]))==2))
  return(0)
}

two_pair = function(x){
  if(length(which(tabulate(as.numeric(x[1,]))==2))==2) return(max(which(tabulate(as.numeric(x[1,]))==2)))
  return(0)
}

three_kind = function(x){
  if(length(which(tabulate(as.numeric(x[1,]))==3))==1) return(which(tabulate(as.numeric(x[1,]))==3))
  return(0)
}

straight = function(x){
  if(length(unique(diff(sort(as.numeric(x[1,])))))==1 & unique(diff(sort(as.numeric(x[1,]))))[1]==1) return(max(as.numeric(x[1,])))
  return(0)
}

flush = function(x){
  if(length(unique(x[2,]))==1) return(max(as.numeric(x[1,])))
  return(0)
}

full_house = function(x){
  if(three_kind(x)!=0 && one_pair(x)!=0) return(three_kind(x))
  return(0)
}

four_kind = function(x){
  if(length(which(tabulate(as.numeric(x[1,]))==4))==1) return(which(tabulate(as.numeric(x[1,]))==4))
  return(0)
}

straight_flush = function(x){
  if(straight(x)!=0 &&  flush(x)!=0) return(straight(x))
  return(0)
}

h1_wins = 0
for(i in 1:1000){
  h1 = tran(deals[i,1:5])
  h2 = tran(deals[i,6:10])
  win = FALSE
  types = list(high_card, one_pair, two_pair, three_kind, straight, flush, full_house, four_kind, straight_flush)
  h1_type = NULL
  h2_type = NULL
  for(j in 1:length(types)){
    if(types[[j]](h1)!=0) h1_type = j
    if(types[[j]](h2)!=0) h2_type = j
  }
  if(h1_type > h2_type) win = T
  if(h1_type == h2_type & types[[h1_type]](h1) > types[[h1_type]](h2)) win = T
  if(win == T) h1_wins = h1_wins +1
}

h1_wins