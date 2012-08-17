\name{cluster}
\alias{cluster}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Extract clustered subsets
}
\description{
After running a Simpsons, the function 'cluster' extracts desired clusters from "Simpsons" object. 
}
\usage{
cluster(x, clusters)
}
\arguments{
  \item{x}{Object of class Simpson}
\item{clusters}{Define which clusters should be returned. Can range from 1 to maximum number of clusters detected in the Simpsons analysis.}
}

\details{
Returns list 
}
\value{
Returns list
}
\references{
Kievit, R.A., Frankenhuis, W. E. , Waldorp, L. J. & Borsboom, D. (in preparation). Simpson's Paradox in Psychological Science: A Practical Guide. 
http://rogierkievit.com/simpsonsparadox.html
}
\author{
Rogier Kievit <rogierkievit@gmail.com> & Sacha Epskamp <mail@sachaepskamp.com>}

\examples{
\dontrun{
#example 2. Here we estimate the relationship between 'Coffee' and #'Neuroticism'. 
#As opposed to example 1, we have not measured any possible clustering #identifiers 
#such as gender, so we want to estimate whether there is evidence for #clustering based 
#only on the data we measured: Coffee and Neuroticism.

#generating data 
Coffee1=rnorm(100,100,15)
Neuroticism1=(Coffee1*.8)+rnorm(100,15,8)
g1=cbind(Coffee1, Neuroticism1)
Coffee2=rnorm(100,170,15)
Neuroticism2=(300-(Coffee2*.8)+rnorm(100,15,8))
g2=cbind(Coffee2, Neuroticism2)
Coffee3=rnorm(100,140,15)
Neuroticism3=(200-(Coffee3*.8)+rnorm(100,15,8))
g3=cbind(Coffee3, Neuroticism3)
data2=data.frame(rbind(g1,g2,g3))
colnames(data2) <- c("Coffee","Neuroticism")

example2=Simpsons(Coffee,Neuroticism,data=data2) 
cluster(example2,2) #extracts data belonging to cluster 2
cluster(example2,c(1,3) #extracts all datapoints belonging to clusters 1 and 3
}
}
