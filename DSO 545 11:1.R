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


## Handout2

#1.
fruit = c("apple","banana","pear","pineapple")
str_detect(fruit,"a")
str_detect(fruit,"^a") # first letter
str_detect(fruit,"a$") # last letter
str_detect(fruit,"[aeiou]") # a\e\i\o\u
str_detect(fruit,"[a-d]") # a\b\c\d

# detect a str that starts with "a" and ends with "e"
str_detect(fruit,"^ae$")
str_detect(fruit,"^a[a-z]e$")
str_detect(fruit,"^a[a-z]*e$")

#4.
phone = "213 740 4826"

parser = "[0-9]{3} [0-9]{3} [0-9]{4}"

str_detect(phone, parser)

phone2 = c("213 740 4826","213-740-4826")

parser2 = "[0-9]{3} |-[0-9]{3} |-[0-9]{4}"
parser2 = "[0-9]{3}[ -][0-9]{3}[ -][0-9]{4}"

str_detect(phone2, parser2)

phone3 = c("213 740 4826","213-740-4826","(213) 740-4826")

parser3 = "[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}\\b"

str_detect(phone3, parser3)

#6.
cat(body[10])
cat(body[18])

str_extract(string = body,pattern = parser3)

#7.
zip = c("90028","90028-0809000")

parser.zip = "[0-9]{5}(-[0-9]{4,4})?"

str_detect(zip,parser.zip)
str_detect(string = body,pattern = parser.zip)
str_extract(string = body,pattern = parser.zip)
