#Problem 42

words = scan("p042_words.txt", what='string', sep=',')
upper_bound = max(nchar(words))*26

triangle = function(n){
  n*(n+1)/2
}

score = function(str){
  out = 0 
  for(i in 1:nchar(str)){
    out = out + match(substr(str,i,i), toupper(letters))
  }
  out
}

triseq = 1
n=1
while(tail(triseq,1)<upper_bound){
  n=n+1
  triseq = c(triseq, triangle(n))
}

count = 0
for(i in 1:length(words)){
  if(score(words[i])%in%triseq) count=count+1
}
print(count)