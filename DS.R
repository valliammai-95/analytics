#datastrucutures in R

#dataframe----

#matrix----
(data = 24:1)
v12 = c(1,3,'a')
v12 + 1 
v13 = 1:10
v13 + 2
v13 ^ 2
v13 / sum(v13)
m1 = matrix(data)
m1
(m2=matrix(data, nrow=4))
(m2=matrix(data, nrow=4, byrow=T))
?matrix
m2[1,]
m2[,3]
m2[r(1,4),c(2,4,5)]
m2[c(1,4),c(2,4,5)]
rowSums(m2)
colSums(m2)
t1 = table(mtcars$cyl, mtcars$gear, dnn=c('cyl','gear'))
t1         
margin.table(t1, margin =1)
margin.table(t1, margin =2)

addmargins(t1)
addmargins(t1, FUN=mean)
addmargins(t1, FUN=list(list(mean,sum), list(sd,var)))
sweep(m2, margin=2, stats=c(1,2,3,4), FUN = '*')
sweep(m2, margin=2, STATS=c(1,2,3,4), FUN = '*')
mtcars
data()
Airpassengers
class(mtcars)
dim(mtcars)
head(mtcars)
nmaes(mtcars)
summary(mtcars)#vectors----

#summarising / filter data from DF
mtcars[mtcars$gear==4,]
mtcars[order(mtcars$mpg),]
mtcars[c(1,3),c(2,3)]

#export to csv
mtcars
write.csv(mtcars,'valli.csv')

df1=read.csv('valli.csv')#vectors
v1 = 10
print(v1)
v2 = 1:100
v2
(v3=c(1,6,4,10))  #create and print
v4 = seq(1,100,5)
v4
v5 = c('A', 'Valli', "IIFT")
v5
class(v5)
(v6 = 1:10000)
(v7 = rnorm(100, mean=60, sd=10))
mean(v7)
sd(v7)
v7[seq(1,100,2)]
v7[v7 >70 | v7 <50]
mean(v7[v7 >70 | v7 <50])
plot(v7)
hist(v7)
plot(density(v7))
hist(v7, breaks=10)
quantile(v7)
summary(v7)
quantile(v7, seq(0,1, .01))
quantile(v7, seq(0,1, .1))
sort(v7)
sort(v7, decreasing = TRUE)
head(df1)

#create a dataframe from scratch
#roll no, nmae, gender, marks, grade
(rollno = 1:30)
(name=paste('student',1:30))
rep('M',3)
(gender = sample(c('M','F'), size=30, replace=T,prob=c(.1,.9)))
table(gender)
(marks = runif(30,min=50,max=100))  
x=c(-14.34,14,32,15.34)
x
trunc(x)
round(x,2)
floor(x)
ceiling(x)
(grades=sample(c("A")))
(A-30, B-45, C-25)
barplot(table(mtcars$qsec), col=2:16)
range(mtcars$cyl)
students
students[students$gender=='M'& STUDENTS$MARKS>70,]


