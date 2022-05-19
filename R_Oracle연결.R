# 1.패키지 설치 'RODBC'
# Rjava, rjdbc, rOracle
install.packages('RODBC') # ROBC 설치
# 2. l
# Java DB connection
library(RODBC)


# 3. 데이터 원본(64비트) 설정
  # DBMSencoding = 'euc-kr' -> 한글출력
conn1 = odbcConnect('SCOTT_DSN', uid = 'scott', pwd = 'tiger',
                    DBMSencoding = 'euc-kr', believeNRows = F)

# 4. 연결확인
summary(conn1)

# 5. 쿼리 실행
res <- sqlQuery(conn1, 'SELECT * FROM memberTBL')
str(res)
summary(res)

sqlQuery(conn1, 'SELECT * FROM emp')

# 6. 접속해제
odbcClose(conn1)
conn
