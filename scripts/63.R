#63 Powerful digit counts

count = 0

#base can't be larger than 9
for( i in 1:9 ){
  power = 1
  while( power == nchar(as.character(i ** power))){
    count = count + 1
    power = power + 1
  }
}
  count
  
#this one was weirdly easy
