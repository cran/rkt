\name{print.rkt}
\alias{print.rkt}

\title{
print Method for class rkt
}
\description{
The results of the test(s) and the slope are printed
}
\usage{
\method{print}{rkt}(x, ...)
}
\arguments{
  \item{x}{
an object of class rkt, i.e. the output of the rkt function
}
  \item{...}{
any additional argument
}
}
\value{
NULL
}
\author{
Aldo Marchetto <a.marchetto@ise.cnr.it>
}


\examples{
data(pie1)

ex<-rkt(pie1$Year,pie1$SO4,pie1$Month,pie1$mm,TRUE)
print(ex)
}

\keyword{ print }
