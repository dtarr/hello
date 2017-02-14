# Example of labeling points
attach(mtcars)

View(mtcars)

install.packages("devtools")
devtools::install_github("slowkow/ggrepel")

plot(wt, mpg, main="Mileage vs. Car Weight", 
     xlab="Weight", ylab="Mileage", pch=18, 
     col="blue")
text(wt, mpg, row.names(mtcars), cex=0.6, 
     pos=4, col="red")

# 4 figures arranged in 2 rows and 2 columns
attach(mtcars)
par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt 
     vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")

library(devtools)
install_version("ggplot2", version = "2.1.0", 
                repos = "http://cran.us.r-project.org")

library(ggplot2)
library(ggrepel)

help(ggplot)

ggplot(mtcars, aes(wt, mpg),main="title") +
  geom_point(color = 'red') +
  geom_text_repel(aes(label = rownames(mtcars))) +
  theme_classic(base_size = 16)

# ggplot2 examples
library(ggplot2) 

# create factors with value labels 
mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                      labels=c("3gears","4gears","5gears")) 
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual")) 
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                     labels=c("4cyl","6cyl","8cyl")) 

# Kernel density plots for mpg
# grouped by number of gears 
# (indicated by color)
qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")