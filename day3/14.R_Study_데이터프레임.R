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

dim(iris) # 행과 열의 개수 보이기
nrow(iris) # 행의 개수 보이기
ncol(iris) # 열의 개수 보이기
colnames(iris) # 열 이름 보이기, names() 함수와 결과 동일
head(iris) # 데이터셋의 앞부분 일부 보기
tail(iris) # 데이터셋의 뒷부분 일부 보기
str(iris) # 데이터셋 요약 정보 보기
iris[,5] # 품종 데이터 보기
levels(iris[,5]) # 품종의 종류 보기(중복 제거)
table(iris[,'품종']) # 품종의 종류별 행의 개수 세기
colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균
class(iris) # iris 데이터셋의 자료구조 확인
class(state.x77) # state.x77 데이터셋의 자료구조 확인
is.matrix(iris) # 데이터셋이 매트릭스인지 확인하는 함수
is.data.frame(iris) # 데이터셋이 데이터프레임인지 확인하는 함수
is.matrix(state.x77)
is.data.frame(state.x77)

IR.1 <- subset(iris, 품종=='setosa')
IR.1
IR.2 <- subset(iris, 꽃받침길이>5.0 & 꽃받침폭>4.0)
IR.2
IR.2[, c(2,4)] # 2열과 4열의 값만 추출


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

z <- matrix(1:20, nrow = 4)
z
t(z)

t(burger) # t사용 -> 문자로 변환

a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
2*a # 매트릭스 a에 저장된 값들에 2를 곱하기
a+b
a <- a*3
b <- b-5
a
b
trees
colnames(trees) <- c('직경', '높이', '부피')
class(trees)
str(trees)

girth.mean <- mean(trees$Girth)
candidate <- subset(trees, Girth >= girth.mean & Height > 80 & Volume > 50)
candidate
nrow(candidate)

# 종업원 팁계산
install.packages('reshape2')
library(reshape2)
View(tips)
is.matrix(tips)
class(tips)
head(tips)
str(tips)
table(tips$day)
dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')           
lunch
table(dinner$day)
table(lunch$day)
colMeans(dinner[c('total_bill', 'tip','size')])
colMeans(lunch[c('total_bill', 'tip','size')])

dinner