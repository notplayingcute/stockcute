\name{stockts}
\alias{stockts}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
timeseries
}
\description{
get stock timeseries
}
\usage{
stockts(symbol, apikey, interval = "DAILY", outputsize = "compact")
}
\arguments{
  \item{symbol}{
character
}
  \item{apikey}{
character
}
  \item{interval}{
"DAILY","DAILY_ADJUSTED","WEEKLY","WEEKLY_ADJUSTED","MONTHLY","MONTHLY_ADJUSTED"
}
  \item{outputsize}{
active,when choose DAILY or DAILY_ADJUSTED
"full"  returns the full-length time series of 20+ years of historical data. The "compact" option is recommended if you would like to reduce the data size of each API call.
"compact" returns only the latest 100 data points.


}
}
\value{
"date, daily open, daily high, daily low, daily close, daily volume"
}
\examples{
stockts("BABA","demo")
}
