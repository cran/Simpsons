\name{summary.Simpson}
\alias{summary.Simpson}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Summary method
}
\description{
Matrix of all regression results: Each individual cluster and the whole dataset (Alldata) of all clusters, their sample size, and regression estimates (beta and intercept).}
\usage{
\method{summary}{Simpson}(object, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
}
  \item{\dots}{
Not used.
}
}
\value{
Returns list called 'Res'. The first object  contains clusters numbers, their sample size, and regression estimates (beta and intercept) for variables X and Y defined in the object. The second object is an object of class Mclust, and contains all diagnostics of the cluster analysis. For more details, see package Mclust by Fraley & Raftery.   
}
\references{
Kievit, R.A., Frankenhuis, W. E. , Waldorp, L. J. & Borsboom, D. (in preparation). Simpson's Paradox in Psychological Science: A Practical Guide. 
http://rogierkievit.com/simpsonsparadox.html

Fraley, C., & Raftery, A. E. (1998a) MCLUST: Software for model-based cluster and discriminant analysis. Department of Statistics, University of Washington: Technical Report No.342.

Fraley, C., & Raftery, A. E. (1998b). How many clusters? Which clustering method? - Answers via model-based cluster analysis. Department of Statistics, University of Washington: Technical Report no. 329.
}
\author{
Rogier Kievit <rogierkievit@gmail.com> & Sacha Epskamp <mail@sachaepskamp.com>
}

\examples{
\dontrun{
#Example
	#Simulating 100 males 
	coffeem=rnorm(100,100,15)
	neuroticismm=(coffeem*.8)+rnorm(100,15,8)
	clusterid=rep(1,100)
	males=cbind(coffeem,neuroticismm,clusterid)

	#Simulating 100 females
	coffeef=rnorm(100,100,15)
	neuroticismf=160+((coffeef*-.8)+rnorm(100,15,8))
	clusterid=rep(2,100)
	females=cbind(coffeef,neuroticismf,clusterid)
		data=data.frame(rbind(males,females))
	colnames(data) <- c("Coffee","Neuroticism","gender")
example1=Simpsons(Coffee,Neuroticism,clusterid=gender, data=data) 
summary(example1)
}
}