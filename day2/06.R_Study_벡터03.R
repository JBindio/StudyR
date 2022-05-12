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

# 매출액구하기
# R 카페의 매니저로부터 매출액 분석을 의뢰받았습니다. 카페 매니저는 최근
# 일주일간의 요일별 매출액, 총 매출액, 평균 매출액, 평균 매출 이상인 요일에
# 대해 알기를 원합니다. 우선 매니저에게 카페 메뉴판과 일주일간 판매량에 대
# 한 자료를 요청하여 데이터를 확보했습니다. 카페의 매출을 분석해봅니다

esp <- 2000
ame <- 2500
latte <- 3000
days <- c('월','화','수','목','금','토','일')
e.days <- c(4, 5, 3, 6, 5, 4, 7)
names(e.days) <- c(days)
a.days <- c(63, 68, 64, 68, 72, 89, 94)
names(a.days) <- c(days)
l.days <- c(61, 70, 59, 71, 71, 92, 88)
names(l.days) <-c(days)

e.sales <- e.days * esp
a.sales <- a.days * ame
l.sales <- l.days * latte

# 요일별 매출액
mon.sales <- sum(e.sales[1] + a.sales[1] + l.sales[1])
tue.sales <- sum(e.sales[2] + a.sales[2] + l.sales[2])
wen.sales <- sum(e.sales[3] + a.sales[3] + l.sales[3])
thu.sales <- sum(e.sales[4] + a.sales[4] + l.sales[4])
fri.sales <- sum(e.sales[5] + a.sales[5] + l.sales[5])
sat.sales <- sum(e.sales[6] + a.sales[6] + l.sales[6])
sun.sales <- sum(e.sales[7] + a.sales[7] + l.sales[7])
# 요일 전체 매출
day.sales <-c(mon.price, tue.price, wen.price, thu.price, 
              fri.price, sat.price, sun.price)
names(day.sales) <- c(days)
cat('요일 전체 매출은', day.sales, '입니다')

# 총 매출액
all.sales <- sum(e.sales + a.sales + l.sales)
all.sales

# 평균 매출액
mean.sales <- mean(e.sales + a.sales + l.sales)
mean.sales

# 평균 매출액 이상 요일
res <- day.sales[day.sales >= mean.sales]
res