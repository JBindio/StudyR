# 데이터 전처리
z <- c(1, 2, 3, NA, 5, NA, 7, 8, 9, 10)
z
summary(z)
sum(z)
min(z)

sum(is.na(z))
z1 <- c(1,2,3,NA,5,NA,7) # 결측값이 포함된 벡터 z1
z2 <- c(5,8,1,NA,3,NA,7) # 결측값이 포함된 벡터 z2
z1[is.na(z1)] <- 0       # NA를 0 로 치환

z3 <- as.vector(na.omit(z2)) # NA를 제거하고 새로운 벡터 생성
z3
z4 <- z1
z4[is.na(z4)] <- ceiling(sum(z4, na.rm = T) / length(z4))

summary(z4)
summary(c(1,2,3,4,5,6,7))

# 2차원 결측값
iris.na <- iris
iris.na[1, 2] <- NA
iris.na[1, 3] <- NA
iris.na[2, 3] <- NA
iris.na[3, 4] <- NA
head(iris.na)
summary(iris.na)

# 열별 결측값 확인
for (i in 1:ncol(iris.na)) {
  this.na <- is.na(iris.na[,i])
  cat(colnames(iris.na)[i], '\t', sum(this.na), '\n')
}

# apply 함수
col_na <- function(y) {
  return(sum(is.na(y)))
}
na.count <- apply(iris.na, 2, FUN = col_na)
na.count

# 행별 결측값 확인
rowSums(is.na(iris.na)) # 행별 NA 개수
result <- rowSums(is.na(iris.na))
sum(result > 0) # NA가 포함된 행의 개수
sum(is.na(iris.na)) # 데이터셋 전체에서 NA 개수

# 매트릭스 NA 제외 전처리
head(iris.na)
iris.na[complete.cases(iris.na), ] # NA 가 없는 값 표시
iris.na[!complete.cases(iris.na), ] # NA 가 있는 값 표시
iris.na[complete.cases(iris.na) == F, ]

iris.comp <- iris.na[complete.cases(iris.na), ]

# 전세계 통계데이터
library(carData)
str(UN)
levels(UN$region)
levels(UN$group)

apply(UN, 2, FUN = col_na)
length(UN$region)
mean(UN$lifeExpF, na.rm = T) # NA 제외하고 계산

tmp <- UN[,c('pctUrban', 'infantMortality')]
tmp
length(tmp$pctUrban)
tmp <- tmp[complete.cases(tmp),] # NA 제거
colMeans(tmp)
mean(tmp$pctUrban)

tmp.asia <- subset(UN, region == 'Asia') #아시아 국가 추출
mean(tmp.asia$fertility, na.rm = T)

# 정렬
v1 <- c(1,7,6,8,4,2,3)
v1 <- sort(v1) # 오름차순
v1
v2 <- sort(v1, decreasing=T) # 내림차순
v2

name <- c('정대일','강재구','신현석','홍길동')
sort(name) # 오름차순
sort(name, decreasing = T) # 내림차순

idx <- order(name, decreasing = T)
idx
name[idx[1]]

a <- c(1, 2, 3, 4, 5)
b <- c(11, 24, 55, 23, 9)
z <- rbind(a, b)
str(z)
colnames(z) <- c('C1', 'C2', 'C3', 'C4', 'C5')
z

# 데이터 프레임 정렬
head(iris)
sort(iris$Sepal.Length)

sl.order <- order(iris$Sepal.Length)
iris[sl.order,] # 오름차순으로 정렬
iris[order(iris$Sepal.Length, decreasing = T),] # 내림차순으로 정렬
iris.new <- iris[sl.order,] # 정렬된 데이터를 저장
head(iris.new)

# 정렬 기준이 2개인 경우
iris[order(iris$Species, decreasing = T, iris$Petal.Length),]

# 교통사고 통계 데이터
library(carData)
str(Highway1)
levels(Highway1)

Highway1[order(Highway1$rate, decreasing = T),]
tmp <- Highway1[order(Highway1$len, decreasing = T),'len']
tmp # 구간별 길이를 내림차순으로 정렬한 결과
sum(tmp[1:10]) # 상위 10개 구간의 총 길이

tmp2 <- sort(Highway1$len, decreasing = T)
tmp2

tmp3 <- Highway1[order(Highway1$adt),c('adt','rate')]
tmp3
tmp3[1:10,]

tmp4 <- Highway1[order(Highway1$slim, decreasing = T),
                c('len','adt','rate')]
tmp4
tmp4[1:5,]