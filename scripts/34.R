#Problem 34

facts=NULL
for(i in 0:9){
  facts = c(facts, factorial(i))
}

dig_fact_sum = function(x){
  x = as.character(x)
  y = 0
  for(i in 1:nchar(x)){
    y = y + facts[as.numeric(substr(x,i,i))+1]
  }
  y
}

total = 0

for(i in 3:2540160){
  #print(i)
  if(i==dig_fact_sum(i)) total = total+i
}

print(total)