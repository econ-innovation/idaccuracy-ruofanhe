m<-100
n<-50


if (m > n){
  cat(m,"is lager than", n)
} 


if(m > n){
  cat(m, "is lager than", n)
}else if(m ==n){
  cat(m, "is equal to", n)
}else{
  cat(m, "is smaller than", n)
}

n=0
for(i in 1:100){
  n=n+i
}
 print(n) 


 for(i in LETTERS){
   print(i)
 }
  
 
 i <-1
 while(i <= 9){
   j <-1
   while (j <= i){
     cat(j, "*", i, "=" , i*j, "\t" ,sep ="")
     j <- j +1
   }
   cat("\n" )
   i <- i +1
 }
     
 
 compare <-function(m,n){
   if (m > n){
     cat(m,"is lager than", n)
   } else if(m ==n){
     cat(m, "is equal to" , n)
   }
   else{cat(m,"is smaller than" , n)
   }
 }
 compare(2,3)

 
 
 global_x <-1:3
 f <-function(x){
   global_x <- x + 1
   cat('局部环境中global_x为',global_x, '\n' )
 }
 f(2)
 global_x
 
 install.packages("weights") #加载weights这个包
 
 source ("C:/Users/hrf/Desktop/史东波老师-应用经济学数据分析/three//ttest.R")
 
 M<-matrix(1:10,ncol=2)
 apply(M,1,sum)
 head(M)
 
 getwd()
 setwd("C:/Users/hrf/Desktop/史东波老师-应用经济学数据分析/three")
 list.dirs()
 mydir<-"C:/Users/hrf/Desktop/史东波老师-应用经济学数据分析/three"
 setwd(mydir)
 dir()
 
 install.packages('readr')
 library(readr)
 data <- read_csv('1_1Yuanbo Zhang_aminer.cnprofileyuanbo-zhang542a4624dabfae864af93d5f')
 write_csv(data, "tmp.csv")
 

 library(jsonlite)
 google <- fromJSON("google.json" ,flatten =TRUE)
 
 
 
 
 
 
 
 
 
 