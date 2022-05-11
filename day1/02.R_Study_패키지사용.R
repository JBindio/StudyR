## 패키지 설치/로드

install.packages('ggplot2')
library(ggplot2)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
geom_point()

## cowsay 패키지

install.packages('cowsay')
library(cowsay)
say(what ='hi', by ='cat')
say(what ='hi', by ='snowman')
say(what ='hi', by ='cow')

## 시스템 함수
Sys.Date()
Sys.time()

## 생일 맞추기
# 소윤 931(7/06)  주연 754(5/29) 민철 1029(8/4)
# 석준 1139(9/14) 현석 1442(12/17)
# x *4 +9 *25 + x
x <- c(1:12)
y <- c(1:31)
z <- (((x*4)+9)*25) + y
z
