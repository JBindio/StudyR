# 벡터 심화

# 산술연산
a <- c(1, 4, 3, 7, 8)
a * 2
b <- (3 + a) * 2
b

x <- c(1, 2, 3, 4)
y <- c(5, 6, 7, 8)
x + y
z <- (x + y)
z * 2

# 벡터와 벡터연산
m <- c(x, y)
m
n <- c(y, x)
n
p <- c(m, n, 90, 100)
p
q <- c(x, y, 90, 100)
q

# 벡터 연산 2 (문자가 하나라도 있으면 전부 문자로 변환)
v1 <- c(1, 2, 3)
v2 <- c('John', 'Jane', 'Tom')
v3 <- c(v1, v2)
v3
v4 <- c(v1, T, F, T, v2)
v4

# 벡터 사용함수
datas = 1:10
datas
sum(datas)
sum(datas * 2)
length(datas)
mean(datas)
median(datas)
max(datas)
min(datas)
sort(datas)
sort(datas, decreasing = T)

# 논리 연산자
a <- 1:9
a
a <= 5
a >= 5
a [a>5]
sum(a > 5)
sum(a[a>5])
a == 5
condi <- a > 5 & a < 8
a[condi]
