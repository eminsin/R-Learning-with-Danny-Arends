# Danny Arend's R Course_Answers of the Addtional Assignment of the First Assignment
#
# copyright (c) 2022 - Danny Arend, Erkam Minsin
# written by: Erkam Minsin
#
# last modified: Nov 2022
# first written: Nov 2022

## A WORD OF ADVICE FOR PEOPLE WHO ARE INTERESTED IN CODING ##
## Please let us be aware of the fact that coders who work structured (clean code, with spaces rather than tabs) have(up to) 20 percent more income.
## Let us code clean, and reward clean coders.

setwd("C:\Users\erkam\R Learning\Danny_Arends_Course\Assignments")

#R as a calculator

#1a)
20%%3

#1b)
20%/%3

#1c)
sqrt(-64+0i)

#1d)
(4*pi)^(1/3)

#Vectors

#2a)
r1to3<-round(runif(20,1,3))

#2b)
animals<-c("lion","giraffe","elephant")

#or (with names 1)
animals<-c("animal 1"="lion","animal 2"="giraffe","animal 3"="elephant")
#or (with names 2)
animals<-c("lion","giraffe","elephant")
names(animals)<-c("animal 1","animal 2","animal 3")

#2c)
ranimals<-animals[r1to3]

#2d)
myfavcolors<-c("blue","green","yellow","white")

#2e)
?sample()
rcolors<-sample(myfavcolors,size=20,replace=TRUE)

#2f)
paste(animals[r1to3],rcolors,sep="/")

#Matrices

#3a)
animalMatrix<-matrix("NA",nrow=100,ncol=2)

#3b)
colnames(animalMatrix)<-c("Species","Color")

#3c)
rownames(animalMatrix)<-c(paste("animal",seq(1,100,by=1)))

#3d)
animalMatrix[,"Species"]<-sample(animals,100,replace=TRUE)

#3e)
animalMatrix[,"Color"]<-sample(myfavcolors,100,replace=TRUE)

#3f)
table(paste(animalMatrix[,"Species"],animalMatrix[,"Color"],sep="&"))

#Loops

#4a)
for(x in 1:100){
  cat(x,paste(animalMatrix[x,"Species"],animalMatrix[x,"Color"],sep="-"),sep=" ")
  cat("\n")
}

#4b)
animalMatrix<-cbind(animalMatrix,Weight="NA")

#or
Weight<-c(rep("NA",100))
animalMatrix<-cbind(animalMatrix,Weight)
#or
animalMatrix<-cbind(animalMatrix,"NA")
colnames(animalMatrix)<-c("Species","Color","Weight")

#4c)
animalWeights<-c(50,150,400)

#4d)
names(animalWeights)=c("lion","giraffe","elephant")

#or
animalWeights<-c("lion"=50,"giraffe"=150,"elephant"=400)

#4e)

rweight<-0
for(x in 1:100){
  avgWeight=c(animalWeights["lion"],animalWeights["giraffe"],animalWeights["elephant"])
  speciesSD=sqrt(avgWeight)
  rweight=rnorm(x,avgWeight,speciesSD)
  animalMatrix[x,"Weight"]=rweight[x]
}

#4f)
head(animalMatrix)
#The randomly assigned weights of the animals are not in line with the average expected weights.

#Basic Functions

#5)FUNCTION() ASSIGNMENTS... I WILL GET BACK TO HERE LATER AGAIN


