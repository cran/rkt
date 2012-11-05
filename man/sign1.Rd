\name{sign1}
\alias{sign1}
\title{
modified sign() fucntion for SKT taking into account missing data
}
\description{
differ from sign as it return 0 when x is NA
}
\usage{
sign1(x)
}
\arguments{
  \item{x}{
any number
}
}

\value{
1 if x > 0
-1 if x < 0
0 if x = 0 or x = NA
}
\references{
Hirsch R.M. & Slack J.R. 1984. A nonparametric test for seasonal data with serial dependance. Water Resources Research, 20: 727-732}
\author{
Aldo Marchetto
}
\note{
used by rkt
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
rkt
}
\examples{
a<-1
sign1(a)
a<-NA
sign1(a)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ math }
