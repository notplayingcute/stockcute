stockts <- function(symbol,apikey,interval = "DAILY",outputsize = "compact"){
  if(is.character(symbol))
  {
    fac <- paste("function=TIME_SERIES_",interval,sep = "")
    sym <- paste("&symbol=",symbol,sep = "")
    out <- paste("&outputsize=",outputsize,sep = "")
    key <- paste("&apikey=",apikey,sep = "")
    urls <- "https://www.alphavantage.co/query?"
    if(symbol == "DAILY"|symbol == "DAILY_ADJUST")
    urlss <- paste(urls,fac,sym,out,key,sep = "")
    else
      urlss <- paste(urls,fac,sym,key,sep = "")
    t <- GET(urlss,config = list())
    t3 <- fromJSON(content(t, as="text"))
    return(t3)
  }
  else
    print("error")
}
