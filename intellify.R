setwd("E:/R (Data Science)/excel files")


data <- read.csv("vehicle.csv")

head(data)

pairs(data[3:5])


##### Multiple lr ###########

res1 <- lm( lc ~ lh+Mileage,data )
res1
summary(res1)


###### Simple lr #####

res2 <- lm( lc ~ lh,data)
res2
summary(res2)


##### comparing ####

anova(res2,res1)

##### prediction 

predict(res2,data.frame(lh=10),interval = "confidence")






