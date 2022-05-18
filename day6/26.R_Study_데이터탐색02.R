# 다중탐색
head(cars)

plot(cars$speed, cars$dist, main = '자동차 속도와 제동거리',
     xlab = '속도', ylab = '제동거리')
# 속도와 제동거리의 상관관계 
cor(cars$speed, cars$dist)

# (1) 데이터 확인
st <- data.frame(state.x77) # 매트릭스를 데이터프레임으로 변환
head(st)
# (2) 다중 산점도 작성
plot(st)
# (3) 다중 상관계수
cor(st$Life.Exp, st$Murder)
cor(st$Illiteracy, st$Murder)
cor(st$Income, st$HS.Grad)

str(longley)
head(longley)
df <- longley[,c('GNP', 'Unemployed', 'Armed.Forces', 
                 'Population','Employed')]
plot(df)
cor(df)
