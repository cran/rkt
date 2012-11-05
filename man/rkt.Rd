\name{rkt}
\alias{rkt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mann Kendall test and Seasonal and Regional Kendall tests (SKT/RKT)
}
\description{
Computes the Mann-Kendall test (MK) and the Seasonal and the Regional Kendall Tests for trend (SKT and RKT) and  Theil-Sen's slope estimator.\cr
When a covariable is defined, this function also computes partial RKT and SKT.\cr
To allow for non-regular sampling dates, input data should be vectors, not time series.
}
\usage{
rkt(date, y, block, cv, correct = F, rep = "e")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{date}{
a mandatory vector of numerical data representing dates, as years or years+decimal. If correction for intra-block correlation is required, dates will be truncated to the year, and no more than one value per block per year will be considered. If two equal dates (or truncated dates) are found, the behaviour of the program is determined by rep
}
  \item{y}{
a mandatory vector of measured data. In this vector, missing data are allowed.
}
  \item{block}{
an optional vector of positive integer numbers representing blocks, i.e. sites, seasons or months, or a code combining both sites and seasons/months. If no blocks are defined, the result will be the Mann-Kendall test.
}
  \item{cv}{
an optional vector containing a covariable, such as river flow or deposition amount. In this vector, missing data are allowed
}
  \item{correct}{
a boolean value. If correct is FALSE, no correction for correlation between blocks is performed. If correct is TRUE, dates are truncated and the correction for correlation between blocks is performed. Note that the truncation is performed in any case, while the correction is performed only if there are more than one block, and more than nine years of data. Default value is FALSE.	
}
  \item{rep}{
a character value. If rep is set to "a", data sharing the same date (or truncated date if correct is TRUE) are averaged. If rep is set to "m", their median is used. For any other value of rep, an error is produced if two or more data share the same date (or truncated date if correct is TRUE). The latter is the default behaviour of the program.
}
}
\details{
The MK test for trend analysis was first proposed by Mann (1945).\cr
Hirsch et al. (1982) derived SKT for trend analysis of monthly data in a single site using seasons as the blocking variable, and Helsel and Franse (2006) extended it to a regional test using sites as the blocking variable (RKT).\cr
The correction for correlation among blocks was introduced by Hirsch & Slack (1984), and the partial test was proposed by Libiseller & Grimvall (2002).\cr
At least 4 data are required for each block.\cr
Correction for correlation between blocks is not performed if less than 10 years of data are available.\cr
If correct is FALSE, data are not required to be sampled monthly or yearly.\cr

}
\value{
A list with class rkt is returned with the following components: 
 \item{sl }{two sided p-value 
}
 \item{S }{Kendall's score
}
 \item{B }{Theil-Sen's slope for MK, Seasonal (or Regional) Kendall Slope estimator for SKT and RKT
}
 \item{varS }{variance of S
}
 \item{sl.corrected }{two sided p-value, after correction for intra-block correlation
}
 \item{varS.corrected }{variance of S, after correction for intra-block correlation
}
 \item{partial.S }{partial Kendall's score, if a covariable is present
}
 \item{partial.sl }{two sided p-value of the partial test, if a covariable is present
}
 \item{partial.varS }{partial variance of S, if a covariable is present
}
 \item{partial.sl.corrected }{two sided p-value of the partial test, after correction for intra-block correlation, if a covariable is present
}
 \item{partial.varS.corrected }{partial variance of S, after correction for intra-block correlation, if a covariable is present
}


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
\author{
Aldo Marchetto <a.marchetto@ise.cnr.it>
}
\note{
All items are returned in any case. When a test is not performed, relative items are set to NA.\cr
To consider data sharing the same dates as ties in the time domain, please use Kendall function in the Kendall package.\cr
For time series with multiple detection limits, please refer to the NADA package.\cr
To compare with the Kendall.exe program (Helsel  et al. 2004), please use for dates hydrological years (Oct to Sep) instead of calendar years (Jan to Dec). 
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
print.rkt
}
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
\keyword{ ts }
\keyword{ nonparametric }
