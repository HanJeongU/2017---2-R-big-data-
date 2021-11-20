data("quakes")
mag<-quakes$mag

min (mag)

max(mag)
median(mag)

quantile(mag,c(0.25,0.5,0.75))

boxplot(mag,main="지진 발생 강도의 분포",xlab="지진",ylab="발생건수",col="red")

up<-quantile(mag,0.75)+1.5*(quantile(mag,0.75)-quantile(mag,0.25))
lp<-quantile(mag,0.25)-1.5*(quantile(mag,0.75)-quantile(mag,0.25))

### 데이터 불러오는 두가지 방법
url<-"https://raw.githubusercontent.com/cran/BTYD/master/data/cdnowElog.csv"

seoul<-read.csv(file.choose())

data<-read.csv(url,header=T)

head(data)
par(mfrow=c(1,1))

table(quantity)
quantity<-data$cds
hist(quantity,xlab="CD 거래량",ylab="빈도수",main="CD 거래량 분포",col = rainbow(6))

hist(quantity, main="CD 거래량 분포",xlab="주문당 cd 거래량", ylab="빈도수")

colors<-c("red","orange","yellow","green","blue","navy","violet")

#freq=FALSE 밀도(빈도)가 아닌 상대 도수로 바꿔주는 함수 freq=TRUE는 밀도 빈도 , 생략가능
hist(quantity, main="CD 거래량 분포",xlab="주문당 cd 거래량", ylab="빈도수",col=colors, breaks=seq(0,40,by=5))

hist(quantity, main="CD 거래량 분포",xlab="주문당 cd 거래량", ylab="상대도수",col=colors, breaks=seq(0,40,by=5),freq=FALSE)

hist(quantity, main="CD 거래량 분포",xlab="주문당 cd 거래량", ylab="상대도수",col=colors, breaks="sturges",freq=FALSE)
20


seoul<-read.csv(file.choose())

seoul
install.packages("ggplot2")
library(ggplot2)

ggplot(seoul, aes(factor(Month),MeanTemp))+geom_boxplot()

install.packages("animation")
library(animation)

ani.options(interval=1)

for(i in 10:0){
  plot.new()
  rect(0,0,1,1,col="yellow")
  size =11-i
  text(0.5,0.5,i,cex=size,col=rgb(0,0,1,1))
  ani.pause()  
}


library(animation)

ani.options(interval=1)

while(TRUE){
  y<-runif(5,0,1)
  barplot(y,ylim=c(0,1),col=rainbow(5))
  ani.pause()
  
  
}
install.packages("png")

library(animation)
library(png)
ani.options(interval=0.5)
while(TRUE){
for(i in 1:5){
  img<-paste("C://Users//PC33201//Desktop//Ball/ball",i,".png",sep = "")
  img<- readPNG(img)
  
  plot.new()
  rect(0,0,1,1,col="white")
  rasterImage(img,0,0,1,1)
  ani.pause(0.05)
}
}
dev.off()
