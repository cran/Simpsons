\name{coef.Simpson}
\alias{coef.Simpson}
\title{
Coef method for "Simpson"
}
\description{
Matrix of all regresssion results: Each individual cluster and the whole dataset (Alldata), their sample sizes, and regression estimates (beta, intercept and uncorrected p-value).
}
\usage{
\method{coef}{Simpson}(object, ...)
}

\arguments{
  \item{object}{
Specify object of class 'Simpson'
}
  \item{\dots}{
Not used.
} 
}
\value{
Returns dataframe called 'Res' which contains clusters numbers, their sample size, and regression estimates (beta and intercept) for variables X and Y defined in the object.
}

\references{
Kievit, R.A., Frankenhuis, W. E. , Waldorp, L. J. & Borsboom, D. (in preparation). Simpson's Paradox in Psychological Science: A Practical Guide. 
http://rogierkievit.com/simpsonsparadox.html
}
\author{
Rogier Kievit <rogierkievit@gmail.com> & Sacha Epskamp <mail@sachaepskamp.com>
}

\examples{
\dontrun{
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
coef(example1)


}
}


