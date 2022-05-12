# 함수
y <- sqrt(x = 100) # 제곱근 함수
y

x <- c(1, 8, 5, 3, 7, 4, 9, NA)
sort(x) # 오름차순
sort(x, decreasing = F) # 내림차순
sort(x, na.last = F) # NA(결측치)값 출력

#문자열 붙이기 함수
paste('Hello', 'World', '!' , sep = ' ')
a <- '안녕하세요'
b <- '저는'
c <- '이정빈 입니다.'
paste(a, b, c, sep = ' ')

a1 <- 1:12
b1 <- '월'
c1 <- paste(a1, b1, sep = ' ')
c1

# 월별 매출액 분석
sales <- c(750, 740, 760, 680, 700, 710, 850, 890, 700, 720, 690, 730)
names(sales) <- paste(1:12, '월', sep = '')
sales['1월'] + sales['7월']                  
max.sales.month <- (sort(sales, decreasing = T))                  
max.sales.month [1]
sum(max.sales.month)
sum(sales[1:6])
sum(sales[7:12])
