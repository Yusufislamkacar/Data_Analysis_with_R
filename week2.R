seq(1,101,5)
library("tidyverse")
students <- data.frame(
  Name   = c("ali", "ayse", "mehmet", "yusuf", "ilyas"),
  age    = c(14,15,64,76,54),
  gender = factor(c("f","m","f","f","m")),
  gpa    = c(3.45, 4.00, 2.30, 1.98, 2.00),
  enrollment_status = c(TRUE,TRUE,TRUE,FALSE,TRUE)
  )
averaga_age <- mean(students$age)#mean fonksiyonu pipe ile kullanilamaz. temel R fonksiyonudur.
average_age_with_doply <- students %>%
  summarise(avg_age = mean(age))

print(students)


