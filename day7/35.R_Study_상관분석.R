economics <- as.data.frame(ggplot2::economics)

# 실업자수와 월급
str(economics)
cor.test(economics$unemploy, economics$pce)

head(mtcars)
car_cor <- cor(mtcars) # 상관행렬 생성
round(car_cor, 2) # 소수점 셋째자리에서 반올림

install.packages('corrplot')
library(corrplot)

corrplot(car_cor)
corrplot(car_cor, method = 'number')
