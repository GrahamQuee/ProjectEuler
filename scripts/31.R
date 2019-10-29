#Problem 31

total = 0
for(a in seq(200, 0, -200)){
  for(b in seq(a, 0, -100,)){
    for(c in seq(b, 0, -50)){
      for(d in seq(c, 0, -20)){
        for(e in seq(d, 0, -10)){
          for(f in seq(e, 0, -5)){
            for(g in seq(f, 0, -2)) total = total +1
          }
        }
      }
    }
  }
}
print(total)