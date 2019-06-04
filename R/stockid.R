stockid <- function(symbol,apikey,interval = "5min",outputsize = "compact"){
  if(is.character(symbol))
  {
    sym <- paste("&symbol=",symbol,sep = "")
    out <- paste("&outputsize=",outputsize,sep = "")
    key <- paste("&apikey=",apikey,sep = "")
    int <- paste("&interval=",interval,sep = "")
    urls <- "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY"
    urlss <- paste(urls,sym,int,out,key,sep = "")
    t <- GET(urlss,config = list())
    t3 <- fromJSON(content(t, as="text"))
    return(t3)
  }
  else
    print("error")
}



