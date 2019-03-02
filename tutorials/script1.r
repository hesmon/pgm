# By Samaneh Maleknia

a <- 3
a
b <- as.vector()
class(b)
b <- as.vector(b)
class(a)
b <- c(1,2)
m <- matrix()
m <- matrix(1:6,nrow=2,ncol=3)
x <- 1:3
y <- 10:12 
c <- cbind(x, y) 
r <- rbind(x, y) 
dat <- data.frame(id = letters[1:10], x = 1:10, y = 11:20) 


dat <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)

list1 <- list(A=c(2,5,3),B=21.3,C="sin",D= dat, G=TRUE)


data(mtcars)
str(mtcars)
summary(mtcars)
mtcars$carb
plot(mtcars$disp)
barplot(mtcars$disp,names.arg = mtcars$carb)

library(datasets)
?chickwts
chickwts
data(chickwts)
str(chickwts)
plot(chickwts$feed)

?swiss
data(swiss)
round(cor(swiss),2) # Rounded to 2 decimals
cor.test(swiss$Fertility,swiss$Education)
install.packages("Hmisc")         
library(Hmisc)
#to get correlation matrix and p-value
rcorr(as.matrix(swiss))
#clean up
detach("package:Hmisc",unload=TRUE)
rm(list = ls())
gc()

data(sleep)
data <- sleep[order(sleep$extra),]
#Some quick plots to check data
hist(sleep$extra, col = "bisque1")
hist(sleep$extra, col = c("coral1","coral2","coral3","coral4"),breaks = 4,
     main="Histogram for Sleep data",xlab="numeric increase in hours of sleep",border="blue")
boxplot(extra ~ group, data = sleep)
t.test(extra ~ group, data = sleep)

#bnlearn
library(bnlearn)

dag <- empty.graph(nodes = c("A", "C", "E"))
dag

#set arcs for paired nodes 
dag <- set.arc(dag, from = "A", to = "C")
#set arcs for all nodes
arc.set <- matrix(c("A", "C",
                    "C", "E"),
                    byrow = TRUE, ncol = 2, 
                  dimnames = list(NULL, c("from", "to")))
arcs(dag) <- arc.set

#check for acyclic
acyclic(dag)

#check for directed
directed(dag)

#Probabilistic Representation
A.level <- c("A", "B", "AB")
C.level <- c("A", "B", "AB")
E.level <- c("A", "B", "AB")


A.prob <- array(c(0.30, 0.50, 0.20), dim = 3,
                dimnames = list(A = A.level))

C.prob <- array(c(0.75,0.25,0,0,0.72,0.28,0.88,0,0.12),
          dim = c(3, 3),dimnames = list(C=C.level, A = A.level))

E.prob <- array(c(0.3,0.66, 0.04, 0.92, 0.08,0,0.2,0.2,0.6),dim = c(3, 3),
                dimnames = list(E = E.level, C = C.level))

cpt <- list(A = A.prob, C = C.prob, E = E.prob)

bn <- custom.fit(dag, cpt)

#p(E=AB/A=A)
cpquery(bn,event = (E=="AB"),evidence = (A=="A"))



