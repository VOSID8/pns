#t distribution ke t function and r for random function
#parameter -> degree of freedom,df
#rt(n,df)
n=100
df=n-1
sample<-rt(n,df)
hist(sample)

#q2
#chi-square distribution
#rchisq(n,df)
n=100
df=c(2,10,25)
sample1=rchisq(n,df[1])
sample2=rchisq(n,df[2])
sample3=rchisq(n,df[3])

#3
x<-seq(-6,6,length=100)
df=c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
dt(x,df[4])
plot(x,dt(x,df[4]),type ="l",col="red")
color=c("blue","green","brown")
for (i in 1:3)
  lines(x,dt(x,df[i]),col=color[i])

#4
#d
#f-distribution me do degree of freedom use hote h
#df1 and df2
#f(n,df1,df2)
n=1000
v1=10
v2=20
sample=rf(n,df1=v1,df2=v2)
hist(sample)
      
#b
v1=10
v2=20
pf(1.5,v1,v2)
pf(1.5,v1,v2,lower.tail = FALSE)

#a
#95th quantile probability is 0.95
#we will use q function 
v1=10
v2=20
qf(0.95,v1,v2)

#c
v1=10
v2=20
q<-c(0.25,0.5,0.75,0.999)
qf(q[1],v1,v2)
qf(q[2],v1,v2)
qf(q[3],v1,v2)
qf(q[4],v1,v2)
