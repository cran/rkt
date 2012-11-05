\name{pie1}
\alias{pie1}
\docType{data}
\title{
Example data for rkt function
}
\description{
Bulk open field deposition collected in Val Sessera (Italy) in 1998-2010, volume weighted monthly averages.
}
\usage{data(pie1)}
\format{
  A data frame with 156 observations on the following 5 variables.
  \describe{
    \item{\code{Year}}{sampling year}
    \item{\code{Month}}{sampling month}
    \item{\code{mm}}{amount of precipitation (mm)}
    \item{\code{SO4}}{sulphate concentration (mg/L)}
    \item{\code{NO3}}{nitate concentration (mg N/L)}
  }
}
\details{
SO4 shows a highly significant decreasing trend, 
NO3 shows a moderately significant decreasing trend
and mm no significant trend
}
\source{
Marchetto A., Rogora M. & Arisci S. 2013 Trend analysis of atmospheric deposition data: a comparison of statistical approaches. Atmospheric Environment \bold{64}, 95-102\cr \cr
Rogora M., Mosello R., Arisci S., Brizzio M., Barbieri A., Balestrini R., Waldner P., Schmitt M., Stahli M.,Thimonier A., Kalina M., Puxbaum H., Nickus U., Ulrich E., Probst A. 2006 An overview of atmospheric deposition chemistry over the Alps: Present status and long-term trends. Hydrobiologia \bold{562}, 17--40
}

\examples{
data(pie1)
rkt(pie1$Year,pie1$SO4,pie1$Month,pie1$mm,TRUE)
}
\keyword{datasets}
