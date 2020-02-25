#Problem 59 - XOR decryption
library(gtools)
library(stringr)
ciph = scan('p059_cipher.txt', sep=",")
ciph = as.integer(intToBits(ciph))
ciph = matrix(ciph, ncol = 32, byrow = T)

keytab = 97:122
keytab = as.integer(intToBits(keytab))
keytab = matrix(keytab, ncol = 32, byrow = T)

powers = 2^(0:31)
toID = function(vec){
  as.integer(vec %*% powers) 
}

encode = function(ciph, key){
  out = NULL
  for(i in 0:(nrow(ciph)-1)){
    out = rbind(out, xor(ciph[i+1, ], key[i%%3+1,]))
  }
  toID(out)
}

found = F
for(i in 1:nrow(keytab)){
  for(j in 1:nrow(keytab)){
    for(k in 1:nrow(keytab)){
      print(paste0(i,j,k))
      key = keytab[c(i,j,k),]
      test = paste0(chr(encode(ciph, key)), collapse = "")
      if(str_detect(test, " and ")) found = T
      if(found) break
    }
    if(found) break
  }
  if(found) break
}

sum(encode(ciph, key))
