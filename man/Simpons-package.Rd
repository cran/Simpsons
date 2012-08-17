\name{Simpsons-package}
\alias{Simpsons-package}
\docType{package}
\title{Detecting Simpson's Paradox}
\description{This package detects instances of Simpson's Paradox in datasets of bivariate continuous data . It examines subpopulations in the data, either user-defined or by means of cluster analysis, to test whether a regression at the level of the group is in the opposite direction at the level of subpopulations.}
\details{
\tabular{ll}{
Package: \tab Simpsons\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-08-17\cr
License: \tab GPL-2
}

}
\author{
Rogier Kievit & Sacha Epskamp

Maintainer: Rogier Kievit <rogierkievit@gmail.com>
}
\references{
Fraley, C., & Raftery, A. E. (1998a) MCLUST: Software for model-based cluster and discriminant analysis. Department of Statistics, University of Washington: Technical Report No.342.

Fraley, C., & Raftery, A. E. (1998b). How many clusters? Which clustering method? - Answers via model-based cluster analysis. Department of Statistics, University of Washington: Technical Report no. 329.

Kievit, R.A., Frankenhuis, W. & Borsboom, D. (in preparation). Simpson's Paradox in Psychological Science: A Practical Guide. 

Simpson, E. H. (1951). The interpretation of interaction in contingency tables. Journal of the Royal Statistical Society, Ser. B, 13, 238-241.
}


\keyword{ package }

\examples{
\dontrun{
#example 1. Here, we want to regress 'Coffee' on 'Neuroticism', 
#taking into account possible gender differences. 
#Simulating 100 males 
coffeem=rnorm(100,100,15)
neuroticismm=(coffeem*.8)+rnorm(100,15,8)
clusterid=rep(1,100)
males=cbind(coffeem,neuroticismm,clusterid)
coffeef=rnorm(100,100,15)
neuroticismf=160+((coffeef*-.8)+rnorm(100,15,8))
clusterid=rep(2,100)
females=cbind(coffeef,neuroticismf,clusterid)
data=data.frame(rbind(males,females))
colnames(data) <- c("Coffee","Neuroticism","gender")

example1=Simpsons(Coffee,Neuroticism,clusterid=gender, data=data)
example1

}
}
