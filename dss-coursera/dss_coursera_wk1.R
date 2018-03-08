# R Practice: DSS Coursera
library(data.table)
library(readr)

file_path <- file.path("data", "hw1_data.csv")
wk1_qzz1 <- fread(file_path)
hw1 <- read_csv(file_path)
class(wk1_qzz1)
str(wk1_qzz1)
head(wk1_qzz1)
######
names(wk1_qzz1)
colnames(wk1_qzz1)
wk1_qzz1[1:2,]
head(wk1_qzz1,2)
numrow = nrow(wk1_qzz1)
tail(wk1_qzz1,2)
wk1_qzz1[152:153,]

# Ozone value in 47th row
wk1_qzz1[47,1]

sum(is.na(wk1_qzz1$Ozone))

mean(hw1$Ozone, na.rm = TRUE)

subset_hw <- hw1[(hw1$Ozone > 31 & hw1$Temp > 90),]
mean(subset_hw$Solar.R, na.rm = TRUE)

month_6 <- hw1[hw1$Month == 6,]
mean(month_6$Temp, na.rm = TRUE)

month_may <- hw1[hw1$Month == 5,]
max(month_may$Ozone, na.rm = TRUE)
