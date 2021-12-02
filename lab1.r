---
title: "R Notebook"
output: html_notebook
---

library(tidyverse)
library(XML)
#1
url <- 'https://data.gov.ua/dataset/95c82130-4310-4edb-b7e5-f01b59385eb0/resource/a9ee1ed3-9277-4bc7-99ec-85f951c7b3c5/download/active_declarations_by_doctor.csv'
destfile <-  'C:/Users/Вікторія/Downloads/active_declarations_by_doctor.csv'
download.file(url,destfile, method='curl', mode = 'wb')
gov_data <- read.csv(destfile, header = T)
head(gov_data)
#2
destfile1 <- 'C:/Users/Вікторія/Downloads/Fss06hid.csv'
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv', destfile = destfile1)
code_book <- read.csv(destfile1, header = T, sep = ',')
length(which(code_book$VAL==24))
#3
furl <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml'
doc <- htmlTreeParse(furl, useInternal= TRUE)
zip <- xpathSApply(doc, "//zipcode", xmlValue)

length(which(zip==21231))
