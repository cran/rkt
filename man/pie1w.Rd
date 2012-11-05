\name{pie1w}
\alias{pie1w}
\docType{data}
\title{
Example data for rkt function
}
\description{
Bulk open field deposition collected in Val Sessera (Italy) in 1998-2007. Raw  weekly data.
}
\usage{data(pie1)}
\format{
  A data frame with 718 observations on the following 4 variables.
  \describe{
    \item{\code{Date}}{sampling date (year+decimals)}
    \item{\code{mm}}{amount of precipitation (mm)}
    \item{\code{SO4}}{sulphate concentration (mg/L)}
    \item{\code{NO3}}{nitate concentration (mg N/L)}
  }
}
\details{
SO4 shows a decreasing trend
NO3 and mm show no significant trend
}
\source{
Marchetto A., Rogora M. & Arisci S. 2013 Trend analysis of atmospheric deposition data: a comparison of statistical approaches. Atmospheric Environment \bold{64}, 95-102\cr \cr
Rogora M., Mosello R., Arisci S., Brizzio M., Barbieri A., Balestrini R., Waldner P., Schmitt M., Stahli M.,Thimonier A., Kalina M., Puxbaum H., Nickus U., Ulrich E., Probst A. 2006 An overview of atmospheric deposition chemistry over the Alps: Present status and long-term trends. Hydrobiologia \bold{562}, 17--40
}
\examples{
data(pie1w)
rkt(pie1w$Date,pie1w$SO4)
}
\keyword{datasets}
