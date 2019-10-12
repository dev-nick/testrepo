ccar1=read.csv("ccar.csv")
head(ccar1)
cor(ccar1$Speed,ccar1$Distance)

linearMod <- lm(Distance ~ Speed, data=ccar1)  # build linear regression model on full data
print(linearMod)
# dist = −18.274 + 3.965∗speed
new.speeds <- data.frame(Speed = c(12, 19, 24))
predict(linearMod, newdata = new.speeds)
scatter.smooth(x=ccar1$Speed, y=ccar1$Distance, main="Dist ~ Speed")
