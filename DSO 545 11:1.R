library(stringr)
emails <- readRDS("email.rds")

# 1.

print("\"") ## excape character \
print('"')

cat("\"")
cat("ab\ncd") ## \n new line "enter/return" on the keyboard
cat("a\tb\nc\td") ## \t tab

#2.
cat(":-\\")
cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3.
?str_locate
?str_sub

#4.
str_locate("great","a")
list <- c("great","fantastic","super")
str_locate(list,"a")
occurance = str_locate_all(list,"a")
occurance[1]
occurance[[1]][1]

#5.
str_sub(string = "testing",start = 1,end = 3)
str_sub(string = "testing",end = 3)
str_sub(string = "testing",start = 4,end = 7)
str_sub(string = "testing",start = 4)
str_sub(string = "testing",start = 4,end = str_length("testing"))
nchar("testing")

str_sub(string = "testing",start = 1,end = 4)

#6.
input <- c("abc","defg")
str_sub(input,c(2,3))
str_sub(input,c(3,3))
str_sub(input,c(3,4))
input2 <- c("abc","defg","1234")
str_sub(input2,c(2,3,2))

#7.
emails[10]
cat(emails[10])
str_locate(string = emails[1],pattern = "\n\n")

#8.
body1 = str_sub(string = emails[1],start = 844)
metadata1 = str_sub(string = emails[1],end = 842)
cat(metadata1)
cat(body1)

#9.
str_split(string = metadata1,pattern = "\n")

#10.
breaks = str_locate(string = emails,pattern = "\n\n")
metadata = str_sub(string = emails,start = 1,end = breaks[,1])
body = str_sub(string = emails,start = breaks[,2])
cat(body)
