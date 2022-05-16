## 제어문
# if문 1
job.type <- 'A'
if (job.type == 'B'){
  bonus <- 200        
} else {
  bonus <- 100
}
print(bonus)

# if문 2
a <- 10; b <- 20
if (a > 5 & b > 5){
  print(a+b)
}
if (a > 5 | b > 30){
  print(a*b)
}

# ifelse(3항연산자)
ifelse(a > b, c <- a, c <-b)
c <- ifelse(a > b, a, b)

# for문
for (i in 1:5) {
  cat(i,'')
}

# 구구단
for (y in 1:9) {
  cat('2 x', y, '=', 2*y,'\n')
}

for (x in 2:9) {
  for (y in 1:9) {
    cat (x, 'x', y, '=', x*y,'\n')
  }
cat('\n')
}

# 짝수 찾기
for(i in 1:20) {
  if (i %% 2 == 0) {
    cat(i, ' ')
  }
}

# iris 꽃잎 크기 분류
norow <- nrow(iris) # iris의 행의 수
norow
mylabel <- c() # 비어있는 벡터 선언
for(i in 1:norow) {
  if (iris$Petal.Length[i] <= 1.6) { # 꽃잎의 길이에 따라
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
print(mylabel) # 레이블 출력
str(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel, iris$Species) # 꽃잎 길이와
newds
head(newds) # 새로운 데이터셋 내용 출력

write.csv(newds, './Day4/iris_petal.csv', row.names = F)

# while 문
sum <- 0
i <- 1
while (i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)

# 사용자 정의 함수
mymax <- function(x, y) {
  num.max <- x
  if (y > x) {
    num.max <- y
  }
  
  return(num.max)
}
mymax(5,7)

# 매개변수 디폴트 값
mydiv <- function(x, y = 2) {
  result <- x / y
  
  return(result)
}
mydiv(10)
mydiv(10, 3)

myfunc <- function(x, y) {
  val.sum <- x + y
  val.mul <- x * y
  
  return(list(sum = val.sum, mul = val.mul))
}
myfunc(10,10)
result <- myfunc(10, 10)
s <- result$sum
m <- result$mul
s
m

# 내장함수 apply()
apply(iris[,1:4], 2, mean)   # 평균
apply(iris[,1:4], 2, sum)    # 합계
apply(iris[,1:4], 2, median) # 중간값
apply(iris[,1:4], 2, min)    # 최소값
apply(iris[,1:4], 2, max)    # 최대값