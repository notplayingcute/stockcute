\name{stockid}
\alias{stockid}
\title{
intraday time series
}
\description{
intraday time series
}
\usage{
stockid(symbol, apikey, interval = "5min", outputsize = "compact")
}
\arguments{
  \item{symbol}{
charicter
}
  \item{apikey}{
charicter
}
  \item{interval}{
"1min","5min","15min","30min","60min"
}
  \item{outputsize}{
compact and full are accepted with the following specifications: compact returns only the latest 100 data points in the intraday time series; full returns the full-length intraday time series. The "compact" option is recommended if you would like to reduce the data size of each API call.
}
}
\value{
"timestamp", "open", "high", "low", "close", "volume"
}
\examples{
stockid("BABA","apikey")
}

