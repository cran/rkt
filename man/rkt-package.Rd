\name{rkt-package}
\alias{tkt-package}
\alias{tkt}
\docType{package}
\title{
Mann-Kendall test, Seasonal and Regional Kendall Tests
}
\description{
Contains function rkt which computes the Mann-Kendall test (MK) and the Seasonal and the Regional Kendall Tests for trend (SKT and RKT) and  Theil-Sen's slope estimator. 
}
\details{
\tabular{ll}{
Package: \tab rkt\cr
Type: \tab Package\cr
Version: \tab 1.3\cr
Date: \tab 2014-01-22\cr
License: \tab GPL-2\cr
}
This function computes the Mann-Kendall test (MK) and the Seasonal and the Regional Kendall Tests for trend (SKT and RKT) and  Sen's slope estimator.\cr
MK, SKT and RKT are tests for monotonic trend in time series based on the Kendall rank correlation.\cr
SKT and RKT are intrablock tests in which test statistics are computed for each season or month (SKT) or for each site (RKT) and combined in an overall test.\cr
In RKT, seasonality can be accounted for by using a blocking variable combining both sites and seasons, such as (site * 12 + month).\cr
When a covariable is defined, this function also computes partial RKT and SKT. \cr
To allow for non-regular sampling dates, input data should be vectors, not time series.
}
\author{
Maintainer: Aldo Marchetto <a.marchetto@ise.cnr.it>

}
\references{
Marchetto A., Rogora M., Arisci S. 2013 Trend analysis of atmospheric deposition data: a comparison of statistical approaches. Atmospheric Environment \bold{64}, 95--102\cr\cr
Helsel D.R., Frans L.M. 2006 The regional Kendall test for trend: Environmental Science and Technology \bold{40}, 4066--4073\cr\cr
Helsel D.R., Mueller D.K., Slack J.R. 2006 \emph{Computer program for the Kendall family of trend tests} U.S. Geological Survey Scientific Investigations Report 2005-5275, 4 pp.\cr\cr
Hirsch R.M., Slack J.R., Smith R.A. Techniques of trend ananlyis for monthly water quality data. Water Resources Research \bold{18}, 107-121\cr\cr
Hirsch R.M., Slack J.R. 1984 A nonparametric test for seasonal data with serial dependance. Water Resources Research \bold{20}, 727-732\cr\cr
Libiseller C., Grimvall A. 2002 Perfomance of partial Mann-Kendall tests for trend detection in the presence of covariates. Environmetrics \bold{13}, 71-84\cr\cr
Mann H.B. 1945. Nonparametric tests against trend. Econometrica \bold{13}, 245-249
}
\keyword{ package }
\keyword{ ts }


\examples{
#
# monthly data
#
data(pie1)
ex<-rkt(pie1$Year,pie1$SO4,pie1$Month,pie1$mm,TRUE)
print(ex)
#
# weekly data, no intrablock correction
#
data(pie1w)
ex<-rkt(pie1w$Date,pie1w$SO4)
print(ex)

}
