# 종업원 팁 분석
install.packages('reshape2')
library(reshape2)
View(tips)
str(tips)
unique(tips$sex)

# 성별에 따른 평균 팁 분석
idx <- which(tips[, 'sex'] == 'Female')
mean.female <- mean(tips[idx, 'tip'])

idx <- which(tips$sex == 'Male')
mean.male <- mean(tips[idx, 'tip'])

mean.female # 여성 평균 팁
mean.male   # 남성 평균 팁

# 흡연에 따른 평균 팁 분석
idx <- which(tips$smoker == 'No')
mean.nonsmoker <- mean(tips[idx, 'tip'])
idx <- which(tips$smoker == 'Yes')
mean.smoker <- mean(tips[idx, 'tip'])

mean.nonsmoker
mean.smoker