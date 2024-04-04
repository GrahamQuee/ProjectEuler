#62 - Cubic Permutations

#generate cubes
cubes = as.numeric(1:10000)
cubes = cubes*cubes*cubes

#sort the digits of each cube
ord_cubes = NULL
for(i in 1:length(cubes)){
ord_cubes = c(ord_cubes, paste(sort(unlist(strsplit(as.character(cubes[i]), ""))), collapse = "") )
}
#count occurences of sorted cubes and pull the first one with 5
test = as_tibble(ord_cubes) %>% count(value)
answer = cubes[which(ord_cubes%in%test[test$n==5,]$value)[1]]
answer