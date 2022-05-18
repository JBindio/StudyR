# 단일범주 데이터
library(carData)
tData <- Titanic
tData2 <- TitanicSurvival
str(tData)
str(tData2)
room.class <- tData2$passengerClass
room.class
tbl <- table(room.class)
tbl
sum(tbl) # 총 탑승객 수

# 막대그래프
barplot(tbl, main = '선실별 탑승객', xlab = '선실 등급', ylab = '탑승객수',
        col = c('blue', 'green', 'yellow'), 
        names = c('1등실', '2등실', '3등실')) 

# 원그래프
tbl/sum(tbl) # 선실별 탑승객 비율
par(mar = c(1, 1, 4, 1))
pie(tbl, main = '선실별 탑승객', col = c('blue', 'green', 'yellow'))
par(mar = c(5.1, 4.1, 4.1, 2.1))

tbl/sum(tbl) # 선실별 탑승객 비율
par(mar = c(1, 1, 4, 1))
pie3D(tbl, main = '선실별 탑승객비율', col = c('blue', 'green', 'yellow'),
      labels = c('1등실', '2등실', '3등실'), radius = 1.5, 
      labelcex = 1.0, labelcol = 'white', explode = 0.1)
par(mar = c(5.1, 4.1, 4.1, 2.1))

# 데이터 준비
grad <- state.x77[,'HS Grad'] # 주별 고등학교 졸업률
grad

# 사분위수
summary(grad)
var(grad) # 분산
sd(grad) # 표준 편차

# 히스토그램
hist(grad, main = '주별 졸업률', xlab = '졸업률', ylab = '주의 개수',
     col = 'orange')
boxplot(grad, main = '주별 졸업률', col = 'green')

idx <- which(grad == min(grad))
grad[idx]
idx <- which(grad == max(grad))
grad[idx]
idx <- which(grad < mean(grad))
grad[idx]

# 74~79 영국 폐질환 사망자 데이터
getwd()
ds <- read.csv('./day5/fdeaths.csv', header = T, row.names = 'year')
my.color <- c('orange', 'blue', 'red', 'green', 'purple', 'darkgray')
my.lty <- 1:6

plot(1:12,                           # x축 데이터
     ds[1,],                         # y축 데이터
     main = '월별 사망자 추이',      # 그래프 제목
     type = 'l',                     # 포인트 타입
     lty = my.lty[1],                # 라인 종류
     lwd = 2,                        # 라인 두께
     xlab = '월',                    # x축 라벨
     ylab = '사망자 수',             # y축 라벨
     ylim = c(300, 2000),             # y축 범위
     las = 1,                        # y축 가로쓰기
     col = my.color[1],              # 선 색
     )
# 반복 그래프 그리기
for( i in 2:6) {
  lines(1:12,
        ds[i,],
        type = 'l',
        lty = my.lty[i],
        col = my.color[i],
        lwd = 2,                    
        )
}

# 범례
legend(x ='topright', 
       legend = rownames(ds),
       lty = my.lty,
       col = my.color,
       lwd = 2,
       inset = c(0, 0))

# 미국 자동차 판매가격 데이터
str(carprice)
carprice$Price 

range(carprice$Price) # 값의 범위
mean(carprice$Price)  # 값의 평균

hist(carprice$Price, main = '자동차 가격 판매 분포', 
     xlab='가격대(1000$)', ylab='판매량', col = rainbow(8))

barplot(carprice$Price)

tbl <- table(carprice$Type)
barplot(tbl,
        main = '차종별 판매량',
        xlab = '차종',
        ylab = '판매량',
        col = rainbow(length(tbl)))
summary(tbl)

idx <- which(carprice$Price == max(carprice$Price))
carprice[idx, c('Type', 'Price')]

# 다중변수 탐색(분석)
str(pressure)

plot(pressure$temperature,
     pressure$pressure,
     main = '온도와 기압',
     xlab = '온도(섭씨)',
     ylab = '기압'
     )

# RData로 데이터셋 불러오기
getwd()
load('./result_sales_dt.RData')
View(result_sales_dt)
save(result_sales_dt, file = './result_dt.RData')

# 실전분석
install.packages('Ecdat')
library(Ecdat)
str(Hdma)

tbl1 <- table(Hdma$deny)
tbl2 <- tbl / sum(tbl)
tbl1 # 건수
tbl2 # 비율

names(tbl1) <- c('승인','거절')
names(tbl2) <- c('승인','거절')
barplot(tbl2, main = '주택담보대출 승인/거절 비율',
 col = c('green','yellow'),
 las = 1,
 ylim = c(0,1),
 ylab = '비율')

barplot(tbl1, main = '주택담보대출 승인/거절 건수',
        col = c('green','yellow'),
        las = 1,
        ylim = c(0, 2500),
        ylab = '건수')

hist(Hdma$lvr, main = '주택가격대비 대출금 비율',
 col = rainbow(10), ylim = c(0, 1200))

# dir 수입대비 보증금 비율
# hir 수입대비 주택유지 비율
# ccs 고객 신용등급
# mcs 대출 신용등급

df <- Hdma[, c('dir', 'hir', 'ccs', 'mcs')]
df
point.color <- c('green', 'red')
plot(df, col = point.color[Hdma$deny])
cor(df)
