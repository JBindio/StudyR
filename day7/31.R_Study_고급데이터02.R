install.packages('treemap')
library(treemap) # treemap 패키지 불러오기
data(GNI2014) # 데이터 불러오기
head(GNI2014) # 데이터 내용 보기
treemap(GNI2014,
        index=c('continent','iso3'), # 계층 구조 설정(대륙-국가)
        vSize='population', # 타일의 크기
        vColor='GNI', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        title="World's GNI") # 나무지도 제목
      # bg.labels='yellow', # 레이블의 배경색 사용불가

# 미국 주요도시 통계분석
library(carData)
head(Ericksen)
ds <- subset(Ericksen, city=='state')

ds$stname <- rownames(ds)
treemap(ds,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='poverty', #타일의 크기
        vColor='crime', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        title='USA states poverty and crime') # 나무그림의 제목
