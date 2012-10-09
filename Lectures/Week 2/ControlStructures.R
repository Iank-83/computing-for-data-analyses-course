# IF, ELSEIF, ELSE CONDITION
if(x > 3) {
  y <. 10
} else {
  y <- 0
}

y <- if(x > 3) {10} else {0}

# FOR LOOP
x <- c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])

x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {}
  for(j in seq_len(ncol(x))) {}
    print(x[i, j])
  }
}

# WHILE LOOP
count <- 0
while(count < 10) {
  print(count)
  count <- count +1
}

while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coun == 1) z <- z + 1
  else z <- z - 1
}

# SKIP
for(i in 1:100) {
  if(i <= 20) next # skips the first 20 iterations
  print(i);
}


