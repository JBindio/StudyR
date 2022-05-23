# 1. 아래를 확인하여 아래의 두 문제를 푸세요.
# 1-1. 함수를 사용하여 아래의 벡터를 만들어 보세요.
seq(1.0,3.0,0.2)

# 1-2 x <-11 에서 아래의 결과가 나오게 만들어보세요.
# 단순 인덱스는 아닙니다.
x <- 1:11
x[rep(1:3, times=3)]

# 2. 아래를 확인하여 문제를 푸세요.
max.temp <- c(22,27,26,24,23,26,28)
barplot(max.temp, main = '주간 최대 기온', horiz = T,
        col = rainbow(7), xlab = '섭씨', ylab = '요일',
        names=c('월','화','수','목','금','토','일'), las=2)

# 3. 아래를 확인하여 문제를 푸세요.
str(trees)
gir <- (trees$Girth) # 둘레 
vol <- (trees$Volume) # 용적
plot(gir, vol, main = '나무 둘레-용적 산점도', col = 'skyblue',
     pch = 20, xlab = '둘레', ylab = '용적')

# 4. 아래를 확인하여 문제를 푸세요.
str(airquality)
air <- airquality
oz <- air$Ozone
temp <- air$Temp
wind <- air$Wind
sol <- air$Solar.R
col.oz <- rep('#a8dadc', length(oz))
col.oz[1] <- '#1d3557'
col.temp <- rep('#a8dadc', length(temp))
col.temp[4] <- '#1d3557'
col.sol <- rep('#a8dadc', length(sol))
col.sol[6] <- '#1d3557'
col.wind <- rep('#a8dadc', length(wind))
col.wind[2] <- '#1d3557'

par(mfrow = c(2, 2), mar = c(5, 5, 3, 3))
hist(oz, main = '오존분포', xlab = '오존', col = col.oz)
hist(temp, main = '기온분포', xlab = '기온', col = col.temp, breaks = 5)
hist(sol, main = '자외선분포', xlab = '자외선', col = col.sol)
hist(wind, main = '풍량분포', xlab = '풍량', col = col.wind, breaks = 5)

par(mfrow = c(1,1))

# 5. 아래를 확인하여 문제를 푸세요.
library(carData)
str(TitanicSurvival)
sum(is.na(TitanicSurvival))
t.sur <- TitanicSurvival[complete.cases(TitanicSurvival),]
str(t.sur)

pas <- t.sur$passengerClass
sur<- factor(t.sur$survived, levels=c('yes','no'))
res <- table(sur,pas)

barplot(res , main = '타이타닉 클래스별 생존자',
        col = c('red', 'cyan'), legend.text = c('생존자','사망자'),
        names = c('First', 'Second', 'Third'),
        args.legend = list(x = 'topleft', inset = c(0.1, 0)))