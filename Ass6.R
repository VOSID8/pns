n<-100
df<-n-1

y<-rt(n,df)
y
hist(y)



#2

df<-c(2,10,25)
rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])

#3
x<seq(-6,6,length=100)
x
df<-c(1,4,10,30)
dt(x,df[1])
dt(x,df[2])
dt(x,df[3])
dt(x,df[4])


plot(x,dt(x,df[4]), type = "l", col = "blue", lwd =2)
color<-c("red",'yellow','green')
for(i in 1:3)
  lines(x,dt(x,df[i]),col=color[i],lwd =3)


#4
qf(0.95,df1=10,df2=20)

x=1.5
v1=10
v2=20
s1=pf(x,df1=v1,df2=v2)
s1
s2=pf(x,df1=v1,df2=v2,lower.tail = FALSE)
s2


