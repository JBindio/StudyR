# 외부 함수 실행
setwd('./day4')
getwd()

source('myFunc.R')

result <- mydiv(109, 6)
result

source('determine.R')
result <- determine(score)

# 조건에 맞는 데이터 위치 반환 함수
score.two <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
score.two
which(score.two == 69)
which(score.two == 96)
which(score.two == 84)
which(score.two >= 85)
which(score.two >= 80)
which.max(score.two)
which.min(score.two)
mean(score.two)
median(score.two)

idx <- which(score.two <= 60)
score.two[idx]
score.two[idx] <- 61
score.two

idx <- which(score.two >= 80)
score.two[idx]
score.two[c(2, 5, 7, 9, 10)]
score.high <- score.two[idx]
score.high

# iris 꽃잎 길이가 5.0 이상인것
idx <- which(iris$Petal.Length > 5.0)
idx
iris.big.1 <- iris[idx,]
iris.big.1

iris.big.2 <- subset(iris, iris$Petal.Length > 5.0)
iris.big.2
