#Problem22

names = scan("data\\p022_names.txt", sep=',', what = "", quiet = TRUE, na.string = "")
names = sort(names)

value = function(x){
  sum=0
  for(i in 1:nchar(x)){
    sum=sum+match(substr(x,i,i), toupper(letters))
  }
  sum
}

total = 0
for(i in 1:length(names)){
  score = i*value(names[i])
  print(i)
  print(score)
  total = total + score
}
total