# 다중 그래프
# 화면 분할 2 x 2
par(mfrow = c(2, 2), mar = c(3, 3, 3, 4))

# 그래프 1
hist(iris$Sepal.Length, main = '붓꽃 꽃받침 길이', col = 'orange')
     
# 그래프 2
barplot(table(mtcars$cyl), main = '자동차 실린더',
        col = c('red', 'green', 'blue'),)
# 그래프 3
barplot(table(mtcars$gear), main = '자동차 기어수',
        col = rainbow(3), horiz = T)
# 그래프 
pie(table(mtcars$cyl), main = '자동차 실린더',
    col = topo.colors(3), radius = 1)        
# 화면 원상복귀
par(mfrow = c(1, 1), mar = c(5, 4, 4, 2) + .1)

# 지역 분포도도
install.packages('carData')
library(carData)
str(Chile)
ds <- Chile
colors <- rainbow(20)
par(mfrow = c(2, 3))
ds.region <- table(ds$region)
ds.gender <- table(ds$sex)
ds.edu <- table(ds$education)
barplot(ds.region, main = '지역별 분포', col=colors[1:5])
barplot(ds.gender, main = '성별 분포', col=colors[6:7])
barplot(ds.edu, main = '교육수준별 분포', col=colors[8:10])

hist(ds$age, breaks = 6, main = '연령', xlab = 'age', col=colors[1:6])
hist(ds$income, breaks = 4, main = '수입', xlab = 'income', col=colors[11:14])
hist(ds$statusquo, breaks = 9, main = '정책 지지도', xlab = 'support',
     col=colors[15:20]) 
par(mfrow = c(1, 1))

# 종업원 팁 정보 그래프
library(reshape2)
str(tips)

color.6 <- rep('#a8dadc', 6)
color.6[2] <- '#1d3557'
color.4 <- rep('#a8dadc', 4)
color.4[2] <- '#1d3557'
color.4[3] <- '#457b9d'
par(mfrow = c(2,2))
barplot(table(tips$sex), main='gender', col=c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main='Day of the week', col=color.4)
barplot(table(tips$time), main='time', col=c('#1d3557', '#a8dadc'))
barplot(table(tips$size), main='size', col=color.6)
par(mfrow = c(1,1))

tips.new <- tips
tips.new$perHead <- tips.new$total_bill / tips.new$size

color.5 <- rep('#a8dadc', 6)
color.5[2] <- '#1d3557'
par(mfrow = c(1,3))
hist(tips.new$perHead, main = '1인당 주문 금액', xlab = '단위:달러',
breaks = 5, col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'perHead'],
 main = '1인당 주문 금액(런치)', xlab = '단위:달러',
              breaks = 4, col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'perHead'],
     main = '1인당 주문 금액(디너)', xlab = '단위:달러',
 breaks = 4, col = color.5)
par(mfrow = c(1,1))

tips.new$percent <- tips.new$tip / tips.new$total_bill * 100
par(mfrow = c(1,2))
res.lunch <- hist(tips.new[tips.new$time == 'Lunch', 'percent'],
                  main = '주문 금액 대비 팁의 비율(런치)',
                  xlab = 'percent(%)',
                  breaks = 5)
res.dinner <- hist(tips.new[tips.new$time == 'Dinner', 'percent'],
                   main = '주문. 금액 대비 팁의 비율(디너)',
                   xlab = 'percent(%)',
                   breaks = 10)
par(mfrow = c(1,1))

res.lunch
res.dinner
res <- rbind(lunch = c(0, res.lunch$counts), dinner = 
               res.dinner$counts[1:6])
colnames(res) <- res.dinner$breaks[2:7]
barplot(res, main = '식사 시간에 따른 팁 비율 분포',
        col = c('#1d3557', '#a8dadc'),
        legend.text = c('Lunch', 'Dinner'))

