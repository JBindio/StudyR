# 리스트
h.list <- c('balling', 'tennis', 'ski')
person <- list(name = 'Tom', age = 25, student = T, hobby = h.list)
person[1]
person['age']
person$name
person[[4]][2]


#카페 매출 구하기
#카페 리스트
cafe <- list(esp = c(4, 5, 3 ,6, 5, 4, 7),
             ame = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2000, 2500, 3000),
             menu = c('espresso', 'americano', 'latte'))
# 요일
days <- c('월','화','수','목','금','토','일')

# 카페 메뉴/ 가격
names(cafe$price) <- cafe$menu
cafe$price

# 메뉴 요일별 매출
sale.esp <- cafe$esp * cafe$price[1]
sale.ame <- cafe$ame * cafe$price[2]
sale.latte <- cafe$latte * cafe$price[3]

# 전체 요일별 매출
sale.day <- c(sale.esp + sale.ame + sale.latte)
names(sale.day) <-c(days)
sale.day

# 총 매출
sale.total <- sum(sale.esp + sale.ame + sale.latte)
cat('총 매출은',sale.total,'원 입니다.')

# 평균 매출
sale.mean <- mean(sale.esp + sale.ame + sale.latte)
cat('평균 매출은',sale.mean,'원 입니다.')

# 평균 매출보다 많은 요일
sale.res <- sale.day[sale.day >= sale.mean]
cat('평균 매출보다 매출이 많거나 같은 요일의 매출은',sale.res,'입니다.')