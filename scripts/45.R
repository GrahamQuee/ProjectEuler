#Problem 45

triangle = function(n) n*(n+1)/2

is_penta = function(n){
  check = (1+sqrt(1+24*n))/6
  check == as.integer(check)
}

is_hexa = function(n){
  check = (1+sqrt(1+8*n))/4
  check == as.integer(check)
}

found = FALSE
n = 285
while(!found){
  n = n+1
  val = triangle(n)
  if(is_penta(val)&is_hexa(val)) found = TRUE
}

print(val)