# data <- read.csv(file.choose("Clt-data.csv"))

library(readr)
data <- read_csv("Clt-data.csv")

head(data,10)

num_rows <- nrow(data)
cat("Number of rows:", num_rows, "\n")

population_mean <- mean(data$`Wall Thickness`)

hist(data$`Wall Thickness`, main = "Histogram of Wall Thickness", xlab = "Wall Thickness", ylab = "Frequency")

# Add a vertical line at the population mean
abline(v = population_mean, col = "red")

sample_size <- 50
sample_means <- vector(length = 1000)

# Draw 1000 samples of size 10 and calculate their means
for (i in 1:1000) {
  sample <- sample(data$`Wall Thickness`,sample_size, replace = TRUE)
  sample_means[i] <-mean(sample)
}
sample_means
hist(sample_means,500,main="Distribution sample of mean",xlab="sample of mean wall thickness")



sample_size<-10
sample_vec<-vector(length=1000)

for(i in 1:1000){
  sample<-sample(data$`Wall Thickness`,sample_size,replace = TRUE)
  sample_vec[i]<-mean(sample)
}
sample_vec
hist(sample_vec,main="Distribution sample of mean",xlab="sample of mean wall thickness")

