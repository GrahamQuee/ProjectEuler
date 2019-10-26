#Problem 19

date = c(1,1900)
days = 1
count = 0
while(date[1]<12 | date[2]<2000){
  if(date[1] %in% c(1,3,5,7,8,10)){
    days = (days+31)%%7
    date[1] = date[1]+1
  }else if(date[1]==12){
    days = (days+31)%%7
    date[1] = 1
    date[2] = date[2]+1
  }else if(date[1]==2 & date[2]%%4!=0){
    days = (days+28)%%7
    date[1] = date[1]+1
  }else if(date[1]==2 & date[2]%%4==0){
    if(date[2]==2000) days = days-1
    days = (days+29)%%7
    date[1] = date[1]+1
  }else{
    days = (days+30)%%7
    date[1] = date[1]+1
  }
  if(days%%7==0){
    count = count+1
    print(date)
    print(days)
  }
  if(date[2]<1901) count=1
}
print(count)