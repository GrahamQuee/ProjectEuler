#Problem 44

scope = 2500
penta = function(n){
  n*(3*n-1)/2
}

pentseq = NULL
for(i in 1:scope){
  pentseq = c(pentseq, penta(i))
}

is_penta = function(n){
  n%in%pentseq
}

check = array(rep(0, times=scope^2), dim = c(scope,scope)) 
for(i in 1:scope){
  for(j in 1:scope){
    if(is_penta(abs(penta(i)-penta(j)))&is_penta(abs(penta(i)+penta(j)))) check[i,j] = abs(penta(i)-penta(j))
  }
}
check[check==0]=max(check)
min(check)
