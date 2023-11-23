#Assignment 5 

#question 1 

punif(45,0,60,lower.tail = FALSE)

ans = punif(30,0,60) - punif(20,0,60)
ans

#question 2

dexp(3,1/2)

#b
x <- c(0,1,2,3,4,5)
y <- dexp(x,1/2) 
plot(x,y,type = "l")


#c
pexp(3,1/2)

pexp(3,1/3)

#d
m <- c(0,1,2,3,4,5)
n <- pexp(x,1/2) 
plot(m,n,type = "l")

#e
t<-rexp(1000,1/2)
plot(density(t))



#question3

g <- pgamma(1, shape = 2 , scale  = 1/3, lower.tail = FALSE)
g

qgamma(0.7,shape =  2, scale = 1/3 )