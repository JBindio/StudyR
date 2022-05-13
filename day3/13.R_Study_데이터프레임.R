# 데이터 프레임
py <- matrix(c(168.4, 169.5, 172.1, 62.4, 65.3, 59.8), nrow = 3)
se <- c('M', 'F', 'F')
py <- cbind(py, se)
rownames(py) <- c('Kim', 'Lee', 'Park')
colnames(py) <- c('키','몸무게','성별')
py['Kim', '몸무게']
py['Lee', ]
py[ ,'성별']

city <- c("Seoul","Tokyo","Washington") # 문자로 이루어진 벡터
rank <- c(1,3,2) # 숫자로 이루어진 벡터
city.info <- data.frame(city, rank) # 데이터프레임 생성
city.info # city.info의 내용 출력

team <- c('아스날', '토트넘')
result <- c('승', '패')
score <- c(3, 0)
score.team <-data.frame(team,result,score)
score.team

head(iris) # 데이터의 속성과 첫번쨰 부분 출력
tail(iris) # 데이터의 속성과 마지막 부분 출력
colnames(iris) <- c('꽃받침길이', '꽃받침폭', '꽃잎길이', '꽃잎폭', '품종')
head(iris)
tail(iris)
str(iris)
iris[, 5]
levels(iris[, 5])
iris[, c(1,2)]


kcal <- c(514, 533, 566)
na <- c(917, 858, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')
burger<- data.frame(kcal, na, fat, menu)
rownames(burger) <- c('M', 'L', 'B')
burger

burger['M', 'na'] # M사의 나트륨 함량
burger['M', ] # M사의 모든 영양 정보
burger[, 'kcal'] # 모든 브랜드의 칼로리 정보
burger[c('M','B'),'menu'] # M과 B사의 menu 정보
