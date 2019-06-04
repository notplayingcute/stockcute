stocksearch <- function(keyword,apikey){
  if(is.character(keyword)&is.character(apikey))
  {
    urls <- "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords="
    urlss <- paste(urls,keyword,"&apikey=",apikey,sep = "")
    t <- GET(urlss,config = list())
    t3 <- fromJSON(content(t, as="text"))
    t4 <- as.data.frame(t3)
    return(t4)
  }
  else
    print("error")
}
